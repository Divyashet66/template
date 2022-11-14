pack build draw --path src -t gcr.io/tech-rnd-project/draw --builder paketobuildpacks/builder:full
pid=$!
echo "process 1 running"
wait $pid
echo "process 1 done"
containerId='docker run -d -p 1234:1234 --rm --name draw draw'
echo "process 2 running"
echo `${containerId}`
wait $pid
echo "process 2 done"
open "http://localhost:1234"
pid=$!
echo "process 3 running"
wait $pid
echo "process 3 done"
docker push gcr.io/tech-rnd-project/draw
echo "process 4 running"
wait $pid
echo "process 4 done"
cd template
echo "process 5 running"
wait $pid
echo "process 5 done"
skaffold run --profile staging
echo "process 6 running"
wait $pid
echo "process 6 done"
