
import uvicorn

async def app(scope, receive, send):
    return "test"


if __name__ == "__main__":
    config = uvicorn.Config("smart-rm:app", port=5005, log_level="info")
    server = uvicorn.Server(config)
    server.run()
