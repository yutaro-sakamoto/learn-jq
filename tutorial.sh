#cat input.json | jq '.'
#cat input.json | jq '.[0]'
#cat input.json | jq '.[0] | {message: .commit.message, name: .commit.committer.name}'
#cat input.json | jq '.[] | {message: .commit.message, name: .commit.committer.name}'
#cat input.json | jq '[.[] | {message: .commit.message, name: .commit.committer.name}]'
cat input.json | jq '[.[] | {message: .commit.message, name: .commit.committer.name, parents: [.parents[].html_url]}]'
