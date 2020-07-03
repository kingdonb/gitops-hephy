
#### Releases

- builder v2.13.3 -> v2.13.5
- controller v2.20.6 -> v2.20.7
- dockerbuilder v2.8.0 -> v2.8.1
- router v2.16.3 -> v2.17.0
- slugbuilder v2.7.4 -> v2.7.5
- workflow v2.21.5 -> v2.21.6
- workflow-cli v2.21.5 -> v2.21.6
- workflow-e2e v2.21.5 -> v2.21.6

#### Features

- [`e124995`](https://github.com/teamhephy/builder/commit/e124995ceb6c38f735046b77b0070cdba5f7f6e1) (builder) - builder: Less verbose buildpack output
- [`5c21be2`](https://github.com/teamhephy/builder/commit/5c21be2aaca7a60e874391b24380f52cd31589d7) (builder) - builder: add git_lock_timeout in values.yml
- [`b0686d7`](https://github.com/teamhephy/router/commit/b0686d708caf15c91bdd71b7b0f61d6e357af1b4) (router) - model: add chacha draft to default ciphers
- [`a836ede`](https://github.com/teamhephy/router/commit/a836ede19deb5e4ecca7a81418c9cbb1c5f75390) (router) - model: support equal preference ciphers
- [`f75fdc2`](https://github.com/teamhephy/router/commit/f75fdc2b44261947ef6fe3ad3c7cbd283269d5d1) (router) - model: let clients prefer aes128 ciphers
- [`addb06a`](https://github.com/teamhephy/router/commit/addb06a4123776a7782f893c356a82641a84d4d5) (router) - model: enable TLSv1.3 in nginx by default
- [`9e70a6d`](https://github.com/teamhephy/router/commit/9e70a6dd3be8b391ebb5c91d8c6d998654f3b264) (router) - nginx: enable tls 1.3 0-rtt for safe http methods

#### Fixes

- [`cfa271d`](https://github.com/teamhephy/builder/commit/cfa271d9b8d367ec5837ce9961e019784a7818a6) (builder) - Dockerfile: switch to bionic hephy/base:v0.4.1
- [`17448e2`](https://github.com/teamhephy/controller/commit/17448e254dc2aea3ae4b42082b69ea6b6e4b38a1) (controller) - Dockerfile: fix django python3-distutils on bionic 18.04
- [`fa24e70`](https://github.com/teamhephy/router/commit/fa24e707b90f963514281df66603fb4de6ee955b) (router) - model: fix(model) allow enabling TLSv1.3 protocol
- [`406f0bb`](https://github.com/teamhephy/router/commit/406f0bbf57b1aef252f523ffdb3eed551668cecb) (router) - model: fix advanced ciphers validation
- [`492abc3`](https://github.com/teamhephy/router/commit/492abc3e6bc254870c430effa670b5b2d599f76d) (router) - model: allow tls 1.3 cipher suite names
- [`35ac8c3`](https://github.com/teamhephy/router/commit/35ac8c3edd1cdeb6fd09dc08a115f3e637a1e5ee) (router) - model: add missing tls 1.3 default ciphers
- [`94e77ae`](https://github.com/teamhephy/router/commit/94e77aeb8f9f646ebfb2f26bd72aabc2f8156308) (router) - readme: escape pipe characters in table cells

#### Documentation

- [`952b188`](https://github.com/teamhephy/workflow/commit/952b1887c9326384ac430d12be307bf685b5bdc5) (workflow) - cli: fix to stable on cli instructions and date of v2.21.5
- [`86b5fa8`](https://github.com/teamhephy/workflow/commit/86b5fa8d48047c335db6eebecfef2ea35f15cfe7) (workflow) - README: add new hephy fox static logos
- [`0cb9ae5`](https://github.com/teamhephy/workflow/commit/0cb9ae5dbcba25019763a13b537789ab6a5cb013) (workflow) - README: add new hephy fox static logos
- [`5202b29`](https://github.com/teamhephy/workflow/commit/5202b295b5e24877523bb99e3fd8d32ca49df42a) (workflow) - logo: change logo to svg and make responsive

#### Maintenance

- [`250b066`](https://github.com/teamhephy/builder/commit/250b066dff75d100046c13d009a4f7b97eea1a64) (builder) - glide: update the google api and grpc packages
- [`1dae578`](https://github.com/teamhephy/builder/commit/1dae5787cacf00e053abed38f6e23fd5119bb532) (builder) - travis: add travis ci build status badge
- [`227bc7a`](https://github.com/teamhephy/builder/commit/227bc7af239b60e0f910c119b3e006b51db4450a) (builder) - travis: running gofmt to fix lint errors
- [`9bdabc8`](https://github.com/teamhephy/builder/commit/9bdabc8b30b7a27877f725e3c5cdacd5077fce45) (builder) - travis: trying go version 1.12.x
- [`2ff442f`](https://github.com/teamhephy/builder/commit/2ff442fa10136593af0c299db6bcae9e2761b5bc) (builder) - go-dev: upgrading go-dev container to v1.25.0
- [`77a6c09`](https://github.com/teamhephy/builder/commit/77a6c090d3caf634936f9ef5c74ccce0d39c63a5) (builder) - linter: Make the mandatory linters happy
- [`7bae8b6`](https://github.com/teamhephy/builder/commit/7bae8b64c501e76d4f79253cc38fb4829ac169d8) (builder) - linter: gofmt -s
- [`79eaf4e`](https://github.com/teamhephy/builder/commit/79eaf4ed0f1a528a999fab86eb36f03fa3090f22) (builder) - linter: fix missing buildPackDebug in k8s_util_test
- [`c765eaf`](https://github.com/teamhephy/builder/commit/c765eaf58d92e6868913765e65795548931032d5) (builder) - go-dev: move to image fork hephy/go-dev:v1.25.1
- [`5d382c3`](https://github.com/teamhephy/builder/commit/5d382c3670d628815c94230472f927b22c02f829) (builder) - glide: upgrade and pin glide and fix distribution package
- [`541cf24`](https://github.com/teamhephy/builder/commit/541cf245996078b5291ee804b522ed990ddd88fe) (builder) - go-dev: upgrading go-dev container to v1.26.2
- [`4591544`](https://github.com/teamhephy/builder/commit/4591544a61520a69d2cdb4c87b5895d9a51960ce) (builder) - glide: upgrade k8s.io/kubernetes to 1.4.0-alpha.2
- [`71c4322`](https://github.com/teamhephy/builder/commit/71c4322169c8fcbc1693d845f93dc065d97f7266) (builder) - glide: upgrade k8s.io/kubernetes to 1.4.12
- [`79f825c`](https://github.com/teamhephy/builder/commit/79f825cbc6e25161b663758260435c5699536763) (builder) - Dockerfile: switch to bionic lts hephy/base:v0.4.0
- [`1c585da`](https://github.com/teamhephy/controller/commit/1c585dafa69f9fd26e23ae6341958f167742b30b) (controller) - Dockerfile: switch to bionic lts hephy/base:v0.4.0
- [`8e2e254`](https://github.com/teamhephy/controller/commit/8e2e254f31e8784dbf0e963da7751ee5eed856c2) (controller) - Dockerfile.test: switch to posgresql 10 on bionic for testing
- [`d024ffd`](https://github.com/teamhephy/dockerbuilder/commit/d024ffd5869d3e0591ac6c45f6f3a427dad51526) (dockerbuilder) - Dockerfile: switch to bionic lts hephy/base:v0.4.0
- [`c023f8d`](https://github.com/teamhephy/dockerbuilder/commit/c023f8d777b5116569b00c8e42f5359fec0931f2) (dockerbuilder) - Dockerfile: add hephy-obj-storage-cli gcs bucket
- [`c66187b`](https://github.com/teamhephy/router/commit/c66187bd2977d59f72f019a5022664092300e590) (router) - rootfs: nginx 1.18.0, openssl 1.1.1g
- [`3b3fd71`](https://github.com/teamhephy/router/commit/3b3fd71c91f97b5506cd3b4728c6e9f5b8d25323) (router) - rootfs: use cloudflare zlib for nginx
- [`63e6a35`](https://github.com/teamhephy/router/commit/63e6a3564bb43ec9a5f24243b18548fe6df0608f) (router) - model: remove redundant !DSS cipher rule
- [`4bec8bd`](https://github.com/teamhephy/router/commit/4bec8bd01552d6d6dc9f7b58fab4d9e1311e5a5e) (router) - build: chore(build) update to latest go-dev image
- [`ae978f8`](https://github.com/teamhephy/router/commit/ae978f824d8bbfbff2d7b55d7b3ee26707f084ec) (router) - Dockerfile: switch to bionic lts hephy/base:v0.4.0
- [`8418aee`](https://github.com/teamhephy/router/commit/8418aeec68c3929a6156e1d15712718cdf945df6) (router) - Dockerfile: switch to bionic lts hephy/base:v0.4.0
- [`29e3c65`](https://github.com/teamhephy/router/commit/29e3c653520e50072695d21bd3e7c520d355f230) (router) - scripts: ensure get scripts fail when errors
- [`b75142d`](https://github.com/teamhephy/router/commit/b75142d633abc0748225028f06de262d933c13c2) (router) - rootfs: update to hephy/base:v0.4.1 image
- [`8338d41`](https://github.com/teamhephy/router/commit/8338d41668ff4a0476f2c8f82434e0ac7eab7947) (router) - rootfs: build custom openssl debs for nginx
- [`6196ed6`](https://github.com/teamhephy/slugbuilder/commit/6196ed6f3e23621e151535c20e588746fb9fe031) (slugbuilder) - buildpacks: update all buildpacks to latest versions
