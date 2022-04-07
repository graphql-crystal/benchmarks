use actix_web::web::Data;
use actix_web::{guard, web, App, HttpServer};
use async_graphql::*;
use async_graphql_actix_web::{GraphQLRequest, GraphQLResponse};

struct Query;

#[Object]
impl Query {
    async fn hello(&self) -> String {
        String::from("world")
    }
}

async fn index(schema: web::Data<Schema<Query, EmptyMutation, EmptySubscription>>, req: GraphQLRequest) -> GraphQLResponse {
    schema.execute(req.into_inner()).await.into()
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    let schema = Schema::new(Query, EmptyMutation, EmptySubscription);

    HttpServer::new(move || {
        App::new()
            .app_data(Data::new(schema.clone()))
            .service(web::resource("/graphql").guard(guard::Post()).to(index))
    })
    .bind("127.0.0.1:8000")?
    .run()
    .await
}