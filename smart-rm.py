

async def app(scope, receive, send):
    await send({
        'type': 'http.response.start',
        'status': 200,
        'headers': [
            [b'content-type', b'text/plain'],
        ]
    })
    await send({
        'type': 'http.response.body',
        'body': b'Hello, world!',
    })


if __name__ == "__main__":
    config = uvicorn.Config("smart-rm:app", port=5005, host="0.0.0.0", log_level="info")
    server = uvicorn.Server(config)
    server.run()
