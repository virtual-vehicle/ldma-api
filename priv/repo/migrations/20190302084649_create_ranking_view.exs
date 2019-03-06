defmodule AegisApi.Repo.Migrations.CreateRankingView do
  use Ecto.Migration

  def up do
    execute "CREATE VIEW trip_data.ranking_v AS
              SELECT DISTINCT(d.driver_id),
                (SELECT sum(di.distance) FROM (SELECT t.distance AS distance FROM trip_data.trip_t AS t WHERE t.driver_id = d.driver_id ORDER BY t.start_at DESC LIMIT 50) di) driving_distance,
                (SELECT sum(du.duration) FROM (SELECT t.duration AS duration FROM trip_data.trip_t AS t WHERE t.driver_id = d.driver_id ORDER BY t.start_at DESC LIMIT 50) du) driving_time,
                (SELECT avg(rs.risk_score) FROM (SELECT r.risk_score AS risk_score FROM trip_data.risk_score_v AS r WHERE r.trip_id in (SELECT t.trip_id FROM trip_data.trip_t AS t WHERE t.driver_id = d.driver_id ORDER BY t.start_at DESC LIMIT 50)) rs) driver_score
                FROM trip_data.driver_t AS d;"
  end

  def down do
    execute "DROP VIEW IF EXISTS trip_data.ranking_v;"
  end
end
