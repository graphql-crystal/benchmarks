module Oxide
  module Language
    class Lexer
      getter token : Token
      def initialize(input : String)
        @reader = Char::Reader.new(input)
        @token = Token.new
        @line_number = 1
        @column_number = 1
      end

      def next_token : Token
        skip_whitespace

        @token.line_number = @line_number
        @token.column_number = @column_number

        case current_char
        when '\0'
          @token.kind = :EOF
        when '!'
          next_char :bang
        when '$'
          next_char :dollar
        when '&'
          next_char :amp
        when '('
          next_char :l_paren
        when ')'
          next_char :r_paren
        when '.'
          # If the next two values are . then we have a spread
          if next_char == '.' && next_char == '.'
            next_char
            @token.kind = :spread
          end
        when ':'
          next_char :colon
        when '='
          next_char :equals
        when '@'
          next_char :at
        when '['
          next_char :l_bracket
        when ']'
          next_char :r_bracket
        when '|'
          next_char :pipe
        when '{'
          next_char :l_brace
        when '}'
          next_char :r_brace
        when '?'
          next_char :question_mark
        when '"'
          consume_string
        when '#'
          skip_comment
          next_token
        else
          if current_char.ascii_number? || current_char == '-'
            consume_number
            return @token
          end

          if start_of_name?(current_char)
            consume_name
          else
            if current_char == '\''
              raise "Unexpected single quote character (\'), did you mean to use a double quote (\")?"
            else
              raise "Unexpected character: #{current_char}"
            end
          end
        end

        @token
      end

      def consume_number
        is_float = false

        value = String.build do |io|
          # If negative we should consume
          if current_char == '-'
            io << current_char
            next_char
          end

          if current_char == '0'
            # Check that the following number isn't a digit
            io << current_char
            next_char

            if current_char.ascii_number?
              raise "Invalid number, unexpected digit after 0: #{current_char}"
            end
          else
            read_digits(io)
          end

          if current_char == '.'
            is_float = true
            io << current_char
            next_char
            read_digits(io)
          end

          if current_char == 'E' || current_char == 'e'
            is_float = true
            io << current_char
            next_char

            if current_char == '+' || current_char == '-'
              io << current_char
              next_char
            end

            read_digits(io)
          end

          if current_char == '.' || start_of_name?(current_char)
            raise "Invalid number, expected digit but got: #{current_char}"
          end
        end

        @token.kind = is_float ? Token::Kind::Float : Token::Kind::Int
        @token.raw_value = value
      end

      def read_digits(io : IO)
        unless current_char.ascii_number?
          raise "Invalid number, expected digit but got: #{current_char}"
        end

        while current_char.ascii_number?
          io << current_char
          next_char
        end
      end

      def current_char
        @reader.current_char
      end

      def consume_string
        @token.kind = :string
        # If the next 2 characters are also '"' then it is a block string
        is_quote = next_char == '"'

        if is_quote
          if next_char == '"'
            consume_block_string
          else
            consume_simple_string('"')
          end
        else
          consume_simple_string
        end

        next_char
      end

      def consume_simple_string(initial_char : Char? = nil)
        @token.raw_value = String.build do |io|
          io << initial_char if initial_char
          io << current_char

          next_char

          while current_char != '\0'
            case current_char
            when '"' # Closing string
              break
            else
              io << current_char
              next_char
            end
          end
        end
      end

      def consume_block_string
        # TODO: Consume block string
        @token.raw_value = String.build do |io|
          quote_count = 0
          next_char

          while current_char != '\0'
            # We terminate when we get either a end of input or 3 '"' in a row
            if current_char == '"'
              quote_count += 1

              if quote_count == 3
                break
              else
                next_char
              end
            else
              quote_count.times { io << '"' }
              quote_count = 0

              io << current_char
              next_char
            end
          end
        end
      end

      def consume_name
        # Iterate through characters until non name or end
        value = String.build do |io|
          while current_char.ascii_alphanumeric? || current_char == '_'
            io << current_char
            next_char
          end
        end

        @token.kind = :name
        @token.raw_value = value
      end

      private def start_of_name?(character)
        character.ascii_letter? || character == '_'
      end

      private def next_char
        @column_number += 1

        char = @reader.next_char
        if char == '\0' && @reader.pos != @reader.string.bytesize
          raise "Unexpectedly reached the end of input"
        end
        char
      end

      private def next_char(kind : Token::Kind)
        @token.kind = kind
        next_char
      end

      private def skip_comment
        if current_char == '#'
          next_char

          # Read the comment
          while current_char != '\0'
            if current_char == '\n' || current_char == '\r'
              @line_number += 1
              @column_number = 0
              break
            end

            if current_char.ascii_control?
              break
            end

            next_char
          end
        end
      end

      private def skip_whitespace
        while whitespace?(current_char) || current_char == ','
          if current_char == '\n'
            @line_number += 1
            @column_number = 0
          end
          next_char
        end
      end

      private def whitespace?(char)
        case char
        when ' ', '\t', '\n', '\r'
          true
        else
          false
        end
      end

      private def raise(message)
        ::raise ParseException.new("Syntax Error: #{message}", @line_number, @column_number)
      end
    end
  end
end