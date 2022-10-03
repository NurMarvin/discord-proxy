# Discord Client Proxy

Basically like [displunger](https://gitlab.com/derpystuff/displunger) but the risk of getting disabled is ever so slightly lower.

## DISCLAIMER

**WHILST THIS PROXY TAKES MORE PRECAUTIONS THAN DISPLUNGER, IT IS STILL POSSIBLE THAT DISCORD WILL THINK YOU ARE A SELF-BOT AND DISABLE YOUR ACCOUNT. ONLY USE THIS PROXY IF YOU ARE AWARE OF THIS RISK AND ARE WILLING TO ACCEPT IT.**

## Usage

To use this proxy, you need to have [Docker](https://www.docker.com/) installed. Once you have Docker installed, you can run the proxy by running the following command:

```bash
docker -- run -d -p 3333:3333 nurmarvin/discord-proxy
```

This will make the proxy available on port 3333. If you want to change the port, you can do so by changing the first port number in the command. For example, if you wanted to run the proxy on port 8080, you would run the following command:

```bash
docker -- run -d -p 8080:3333 nurmarvin/discord-proxy
```

If you intend to use this proxy behind a reverse proxy (like NGINX or similar), you will need to pass a canonical URL to the proxy. This is done by passing the `CANONICAL_URL` environment variable to the proxy. For example, if you wanted to have the canonical URL be `https://discord.example.com`, you would run the following command:

```bash
docker -- run -d -p 3333:3333 -e CANONICAL_URL=https://discord.example.com nurmarvin/discord-proxy
```

## Configuration

The proxy can be configured via the following environment variables:

| Variable        | Description                                                                                                   | Default                                    |
| --------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------ |
| `CANONICAL_URL` | The canonical URL of the proxy. This is used to generate the `Origin` header for requests to the Discord API. | `http://localhost:3333`                    |
| `BUILD_HASH`    | The hash of the Discord build to use.                                                                         | `3356503f99cffc142754165f17e9a13bfd708953` |

## Building

To build the proxy, you need to have [Docker](https://www.docker.com/) installed. Once you have Docker installed, you can build the proxy by running the following command:

```bash
docker build -t discord-proxy .
```

## License

This project is licensed under the OSL 3.0 license. See the [LICENSE](LICENSE) file for more information.
