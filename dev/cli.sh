export CARGO_NET_GIT_FETCH_WITH_CLI="true"
export VSCODE_CLI_APP_NAME="codium-angelo"
export VSCODE_CLI_BINARY_NAME="codium-angelo-server-insiders"
export VSCODE_CLI_DOWNLOAD_URL="https://github.com/angelosystems/codium-angelo-insiders/releases"
export VSCODE_CLI_QUALITY="insider"
export VSCODE_CLI_UPDATE_URL="https://raw.githubusercontent.com/angelosystems/versions/refs/heads/master"

cargo build --release --target aarch64-apple-darwin --bin=code

cp target/aarch64-apple-darwin/release/code "../../VSCode-darwin-arm64/Codium Angelo - Insiders.app/Contents/Resources/app/bin/codium-angelo-tunnel-insiders"

"../../VSCode-darwin-arm64/Codium Angelo - Insiders.app/Contents/Resources/app/bin/codium-angelo-insiders" serve-web
