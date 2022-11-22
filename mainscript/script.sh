pack build todo -t gcr.io/tech-rnd-project/todo --builder paketobuildpacks/builder:full
pid=$!
echo "process 1 running"
wait $pid
echo "process 1 done"
containerId='docker run -d -p 3000:3000 --rm --name todo todo'
echo "process 2 running"
echo `${containerId}`
wait $pid
echo "process 2 done"
open "http://localhost:3000"
pid=$!
echo "process 3 running"
wait $pid
echo "process 3 done"
docker push gcr.io/tech-rnd-project/todo
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
