tags=$(curl "http://metadata.google.internal/computeMetadata/v1/instance/tags?alt=text" -H "Metadata-Flavor: Google")
export tags=$(echo $tags | sed 's/ /,/g')
sudo ansible-pull -o -U https://github.com/afonyayoung/hello-world.git -t untagged,$tags
