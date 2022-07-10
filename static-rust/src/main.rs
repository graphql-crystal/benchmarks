use actix_web::{Result, web, App, HttpServer};

async fn graphql() -> Result<String> {
    Ok("{\"data\":{\"hello\":\"world\"}}".to_string())
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(move || {
        App::new().route("/graphql", web::post().to(graphql))
    })
    .bind("127.0.0.1:8000")?
    .run()
    .await
}