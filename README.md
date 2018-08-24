Cloudflare Workers Codeship Example
====

[Cloudflare Workers](http://developers.cloudflare.com/workers/) allow you to write JavaScript which runs on all of Cloudflare's
160+ global data centers. This repo is an example of how to combine multiple files and dependencies to create a Worker using
the [Webpack](https://webpack.js.org/) build tool.

The actual Worker replaces the content of your site with a Worker which returns the current time in the timezone of the caller's
choice.

This project is [adapted from Cloudflare's Webpack example](https://github.com/cloudflare/workers-webpack-example).

### Dependencies

- [npm](https://www.npmjs.com/get-npm)
- [jq](https://stedolan.github.io/jq/) (for the preview script)
- [cURL](https://curl.haxx.se/) (for the preview script)

### Instructions

- `npm install`
- `npm run build`

To open the Workers preview with the built Worker:

- `npm run preview`

### Automated Deployment

You can use Codeship to automatically update your Worker. Just add the following environment variables to your Codeship environment:

- `CLOUDFLARE_EMAIL`
- `CLOUDFLARE_AUTH_KEY`
- `CLOUDFLARE_ZONE_ID`

Codeship will automatically update your worker in Cloudflare when the `master` branch is built using the script at `scripts/deploy`.
