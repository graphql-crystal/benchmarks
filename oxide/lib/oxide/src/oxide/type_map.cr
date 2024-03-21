require "./visitor"

module Oxide
  class TypeMap < Visitor
    private property schema : Oxide::Schema
    private property type_map : Hash(String, Oxide::Type)

    def initialize(@schema)
      @type_map = {} of String => Oxide::Type
    end

    def generate
      roots = [schema.query, schema.mutation, schema.orphan_types].flatten.compact

      roots.each do |type|
        type.accept(self)
      end

      schema.directives.each do |directive|
        directive.arguments.each do |_name, argument|
          argument.type.accept(self)
        end
      end

      type_map
    end

    def visit(type : Oxide::Types::ObjectType)
      previous_type = type_map.fetch(type.name, nil)

      if previous_type.nil?
        type_map[type.name] = type
      end

      type.interfaces.each do |interface|
        interface.accept(self)
      end

      type.fields.each do |name, field|
        field.type.accept(self)

        field.arguments.each do |name, argument|
          argument.type.accept(self)
        end
      end
    end

    def visit(type : Oxide::Types::InputObjectType)
      type_map[type.name] = type
    end

    def visit(type : Oxide::Types::InterfaceType)
      type_map[type.name] = type

      type.fields.each do |name, field|
        field.type.accept(self)

        field.arguments.each do |name, argument|
          argument.type.accept(self)
        end
      end
    end

    def visit(type : Oxide::Types::UnionType)
      type_map[type.name] = type

      type.possible_types.each do |possible_type|
        possible_type.accept(self)
      end
    end

    def visit(type : Oxide::Types::NonNullType)
      type.of_type.accept(self)
    end

    def visit(type : Oxide::Types::ListType)
      type.of_type.accept(self)
    end

    def visit(type : Oxide::Types::ScalarType)
      type_map[type.name] = type
    end

    def visit(type : Oxide::Types::EnumType)
      type_map[type.name] = type
    end
  end
end