with analog_transition_kvab as (
  SELECT 
    DISTINCT ON (
      (
        date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
      ) + interval '30 min'
    ) (
      date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
    ) + interval '30 min' start_time, 
    ant."Timestamp", 
    ant."Value", 
    ant."TimestampIndex" 
  from 
    "AnalogTransition" ant 
  where 
    ant."KeyTag" IN (12200000) 
    and ant."Timestamp" >= '2021-02-01 23:00:00' 
    and ant."Timestamp" <= '2021-02-02 23:59:59.999' 
    and ant."Value" is not null 
  ORDER BY 
    start_time ASC, 
    ant."Timestamp" DESC
), 
analog_transition_kvbc as (
  SELECT 
    DISTINCT ON (
      (
        date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
      ) + interval '30 min'
    ) (
      date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
    ) + interval '30 min' start_time, 
    ant."Timestamp", 
    ant."Value", 
    ant."TimestampIndex" 
  from 
    "AnalogTransition" ant 
  where 
    ant."KeyTag" IN (12220000) 
    and ant."Timestamp" >= '2021-02-01 23:00:00' 
    and ant."Timestamp" <= '2021-02-02 23:59:59.999' 
    and ant."Value" is not null 
  ORDER BY 
    start_time ASC, 
    ant."Timestamp" DESC
), 
analog_transition_kvca as (
  SELECT 
    DISTINCT ON (
      (
        date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
      ) + interval '30 min'
    ) (
      date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
    ) + interval '30 min' start_time, 
    ant."Timestamp", 
    ant."Value", 
    ant."TimestampIndex" 
  from 
    "AnalogTransition" ant 
  where 
    ant."KeyTag" IN (12240000) 
    and ant."Timestamp" >= '2021-02-01 23:00:00' 
    and ant."Timestamp" <= '2021-02-02 23:59:59.999' 
    and ant."Value" is not null 
  ORDER BY 
    start_time ASC, 
    ant."Timestamp" DESC
), 
analog_transition_kvab_down as (
  SELECT 
    DISTINCT ON (
      (
        date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
      ) + interval '30 min'
    ) (
      date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
    ) + interval '30 min' start_time, 
    ant."Timestamp", 
    ant."Value", 
    ant."TimestampIndex" 
  from 
    "AnalogTransition" ant 
  where 
    ant."KeyTag" IN (12200000) 
    and ant."Timestamp" >= '2021-02-01 23:00:00' 
    and ant."Timestamp" <= '2021-02-02 23:59:59.999' 
    and ant."Value" = '0.00' 
  ORDER BY 
    start_time ASC, 
    ant."Timestamp" DESC
), 
analog_transition_ia as (
  SELECT 
    DISTINCT ON (
      (
        date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
      ) + interval '30 min'
    ) (
      date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
    ) + interval '30 min' start_time, 
    ant."Timestamp", 
    ant."Value", 
    ant."TimestampIndex" 
  from 
    "AnalogTransition" ant 
  where 
    ant."KeyTag" IN (12140000) 
    and ant."Timestamp" >= '2021-02-01 23:00:00' 
    and ant."Timestamp" <= '2021-02-02 23:59:59.999' 
    and ant."Value" is not null 
  ORDER BY 
    start_time ASC, 
    ant."Timestamp" DESC
), 
analog_transition_ib as (
  SELECT 
    DISTINCT ON (
      (
        date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
      ) + interval '30 min'
    ) (
      date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
    ) + interval '30 min' start_time, 
    ant."Timestamp", 
    ant."Value", 
    ant."TimestampIndex" 
  from 
    "AnalogTransition" ant 
  where 
    ant."KeyTag" IN (12160000) 
    and ant."Timestamp" >= '2021-02-01 23:00:00' 
    and ant."Timestamp" <= '2021-02-02 23:59:59.999' 
    and ant."Value" is not null 
  ORDER BY 
    start_time ASC, 
    ant."Timestamp" DESC
), 
analog_transition_ic as (
  SELECT 
    DISTINCT ON (
      (
        date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
      ) + interval '30 min'
    ) (
      date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
    ) + interval '30 min' start_time, 
    ant."Timestamp", 
    ant."Value", 
    ant."TimestampIndex" 
  from 
    "AnalogTransition" ant 
  where 
    ant."KeyTag" IN (12180000) 
    and ant."Timestamp" >= '2021-02-01 23:00:00' 
    and ant."Timestamp" <= '2021-02-02 23:59:59.999' 
    and ant."Value" is not null 
  ORDER BY 
    start_time ASC, 
    ant."Timestamp" DESC
), 
analog_transition_ia_down as (
  SELECT 
    DISTINCT ON (
      (
        date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
      ) + interval '30 min'
    ) (
      date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
    ) + interval '30 min' start_time, 
    ant."Timestamp", 
    ant."Value", 
    ant."TimestampIndex" 
  from 
    "AnalogTransition" ant 
  where 
    ant."KeyTag" IN (12140000) 
    and ant."Timestamp" >= '2021-02-01 23:00:00' 
    and ant."Timestamp" <= '2021-02-02 23:59:59.999' 
    and ant."Value" = '0.00' 
  ORDER BY 
    start_time ASC, 
    ant."Timestamp" DESC
), 
analog_transition_ib_down as (
  SELECT 
    DISTINCT ON (
      (
        date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
      ) + interval '30 min'
    ) (
      date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
    ) + interval '30 min' start_time, 
    ant."Timestamp", 
    ant."Value", 
    ant."TimestampIndex" 
  from 
    "AnalogTransition" ant 
  where 
    ant."KeyTag" IN (12160000) 
    and ant."Timestamp" >= '2021-02-01 23:00:00' 
    and ant."Timestamp" <= '2021-02-02 23:59:59.999' 
    and ant."Value" = '0.00' 
  ORDER BY 
    start_time ASC, 
    ant."Timestamp" DESC
), 
analog_transition_ic_down as (
  SELECT 
    DISTINCT ON (
      (
        date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
      ) + interval '30 min'
    ) (
      date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
    ) + interval '30 min' start_time, 
    ant."Timestamp", 
    ant."Value", 
    ant."TimestampIndex" 
  from 
    "AnalogTransition" ant 
  where 
    ant."KeyTag" IN (12180000) 
    and ant."Timestamp" >= '2021-02-01 23:00:00' 
    and ant."Timestamp" <= '2021-02-02 23:59:59.999' 
    and ant."Value" = '0.00' 
  ORDER BY 
    start_time ASC, 
    ant."Timestamp" DESC
), 
analog_transition_pctpf as (
  SELECT 
    DISTINCT ON (
      (
        date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
      ) + interval '30 min'
    ) (
      date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
    ) + interval '30 min' start_time, 
    ant."Timestamp", 
    ant."Value", 
    ant."TimestampIndex" 
  from 
    "AnalogTransition" ant 
  where 
    ant."KeyTag" IN (12280000) 
    and ant."Timestamp" >= '2021-02-01 23:00:00' 
    and ant."Timestamp" <= '2021-02-02 23:59:59.999' 
    and ant."Value" is not null 
  ORDER BY 
    start_time ASC, 
    ant."Timestamp" DESC
), 
analog_transition_pctpf_down as (
  SELECT 
    DISTINCT ON (
      (
        date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
      ) + interval '30 min'
    ) (
      date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
    ) + interval '30 min' start_time, 
    ant."Timestamp", 
    ant."Value", 
    ant."TimestampIndex" 
  from 
    "AnalogTransition" ant 
  where 
    ant."KeyTag" IN (12280000) 
    and ant."Timestamp" >= '2021-02-01 23:00:00' 
    and ant."Timestamp" <= '2021-02-02 23:59:59.999' 
    and ant."Value" = '0.00' 
  ORDER BY 
    start_time ASC, ant."Timestamp" DESC
), 
join_records as (
  select 
    kvab.start_time, 
    kvab."Value" as kVAB, 
    kvbc."Value" as kVBC, 
    kvca."Value" as kVCA, 
    (
      CASE WHEN ia."Value" <= 13.00 THEN 0.00 ELSE ia."Value" END
    ) as IA, 
    (
      CASE WHEN ib."Value" <= 13.00 THEN 0.00 ELSE ib."Value" END
    ) as IB, 
    (
      CASE WHEN ic."Value" <= 13.00 THEN 0.00 ELSE ic."Value" END
    ) as IC, 
    (
      CASE WHEN pctpf."Value" > 100 THEN pctpf."Value" / 100 WHEN pctpf."Value" < -100 THEN pctpf."Value" / 100 ELSE pctpf."Value" END
    ) as pctPF, 
    kvab_down."Value" as kVAB_down, 
    kvab_down."Timestamp" as kVAB_downtime, 
    kvab_down."start_time" as kVAB_downtime_start_time, 
    ia_down."Value" as IA_down, 
    ia_down."Timestamp" as IA_downtime, 
    ia_down."start_time" as IA_downtime_start_time, 
    ib_down."Value" as IB_down, 
    ib_down."Timestamp" as IB_downtime, 
    ib_down."start_time" as IB_downtime_start_time, 
    ic_down."Value" as IC_down, 
    ic_down."Timestamp" as IC_downtime, 
    ic_down."start_time" as IC_downtime_start_time, 
    pctpf_down."Value" as pctPF_down, 
    pctpf_down."Timestamp" as pctPF_downtime, 
    pctpf_down."start_time" as pctPF_downtime_start_time, 
    kvab."Timestamp" as kVAB_firstseentime 
  from 
    analog_transition_kvab kvab 
    LEFT JOIN analog_transition_kvbc kvbc ON kvab.start_time = kvbc.start_time 
    LEFT JOIN analog_transition_kvca kvca ON kvab.start_time = kvca.start_time 
    LEFT JOIN analog_transition_ia ia ON kvab.start_time = ia.start_time 
    LEFT JOIN analog_transition_ib ib ON kvab.start_time = ib.start_time 
    LEFT JOIN analog_transition_ic ic ON kvab.start_time = ic.start_time 
    LEFT JOIN analog_transition_pctpf pctpf ON kvab.start_time = pctpf.start_time 
    LEFT JOIN analog_transition_kvab_down kvab_down ON kvab.start_time = kvab_down.start_time 
    LEFT JOIN analog_transition_ia_down ia_down ON kvab.start_time = ia_down.start_time 
    LEFT JOIN analog_transition_ib_down ib_down ON kvab.start_time = ib_down.start_time 
    LEFT JOIN analog_transition_ic_down ic_down ON kvab.start_time = ic_down.start_time 
    LEFT JOIN analog_transition_pctpf_down pctpf_down ON kvab.start_time = pctpf_down.start_time
), 
prior_ia as (
  select 
    start_time, 
    (
      select 
        (
          CASE WHEN "Value" <= 13.00 THEN 0.00 ELSE "Value" END
        ) as priorIA 
      from 
        (
          SELECT 
            DISTINCT ON (
              (
                date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
              )
            ) (
              date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
            ) start_time, 
            ant."Timestamp", 
            ant."Value", 
            ant."TimestampIndex" 
          from 
            "AnalogTransition" ant 
          where 
            ant."KeyTag" IN (12140000) 
            and ant."Timestamp" < js.start_time 
            and ant."Timestamp" > (js.start_time - INTERVAL '1 days') 
            and ant."Value" is not null 
          ORDER BY 
            start_time DESC, 
            ant."Timestamp" DESC 
          limit 
            1
        ) AS prior
    ) 
  from 
    join_records js 
  where 
    IA IS NULL
), 
prior_ib as (
  select 
    start_time, 
    (
      select 
        (
          CASE WHEN "Value" <= 13.00 THEN 0.00 ELSE "Value" END
        ) as priorIB 
      from 
        (
          SELECT 
            DISTINCT ON (
              (
                date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
              )
            ) (
              date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
            ) start_time, 
            ant."Timestamp", 
            ant."Value", 
            ant."TimestampIndex" 
          from 
            "AnalogTransition" ant 
          where 
            ant."KeyTag" IN (12160000) 
            and ant."Timestamp" < js.start_time 
            and ant."Timestamp" > (js.start_time - INTERVAL '1 days') 
            and ant."Value" is not null 
          ORDER BY 
            start_time DESC, 
            ant."Timestamp" DESC 
          limit 
            1
        ) AS prior
    ) 
  from 
    join_records js 
  where 
    IB IS NULL
), 
prior_ic as (
  select 
    start_time, 
    (
      select 
        (
          CASE WHEN "Value" <= 13.00 THEN 0.00 ELSE "Value" END
        ) as priorIC 
      from 
        (
          SELECT 
            DISTINCT ON (
              (
                date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
              )
            ) (
              date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
            ) start_time, 
            ant."Timestamp", 
            ant."Value", 
            ant."TimestampIndex" 
          from 
            "AnalogTransition" ant 
          where 
            ant."KeyTag" IN (12180000) 
            and ant."Timestamp" < js.start_time 
            and ant."Timestamp" > (js.start_time - INTERVAL '1 days') 
            and ant."Value" is not null 
          ORDER BY 
            start_time DESC, 
            ant."Timestamp" DESC 
          limit 
            1
        ) AS prior
    ) 
  from 
    join_records js 
  where 
    IC IS NULL
), 
prior_pctpf as (
  select 
    start_time, 
    (
      select 
        (
          CASE WHEN "Value" > 100 THEN "Value" / 100 WHEN "Value" < -100 THEN "Value" / 100 ELSE "Value" END
        ) as priorpctPF 
      from 
        (
          SELECT 
            DISTINCT ON (
              (
                date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
              )
            ) (
              date_trunc('hour', ant."Timestamp") + date_part('minute', ant."Timestamp"):: int / 30 * interval '30 min'
            ) start_time, 
            ant."Timestamp", 
            ant."Value", 
            ant."TimestampIndex" 
          from 
            "AnalogTransition" ant 
          where 
            ant."KeyTag" IN (12280000) 
            and ant."Timestamp" < js.start_time 
            and ant."Timestamp" > (js.start_time - INTERVAL '1 day') 
            and ant."Value" is not null 
          ORDER BY 
            start_time DESC, 
            ant."Timestamp" DESC 
          limit 
            1
        ) AS prior
    ) 
  from 
    join_records js 
  where 
    pctPF IS NULL
), 
result_records as (
  select 
    js.start_time, 
    COALESCE(js.kVAB_down, js.kVAB) as kVAB, 
    COALESCE(js.kVAB_down, js.kVBC) as kVBC, 
    COALESCE(js.kVAB_down, js.kVCA) as kVCA, 
    COALESCE(
      js.IA_down, 
      COALESCE(js.IA, p_ia.priorIA)
    ) as IA, 
    COALESCE(
      js.IB_down, 
      COALESCE(js.IB, p_ib.priorIB)
    ) as IB, 
    COALESCE(
      js.IC_down, 
      COALESCE(js.IC, p_ic.priorIC)
    ) as IC, 
    COALESCE(
      js.pctPF_down, 
      COALESCE(
        js.pctPF, p_prior_pctpf.priorpctPF
      )
    ) as pctPF, 
    (
      select 
        (
          (
            1.732 *(
              (
                (
                  COALESCE(js.kVAB_down, js.kVAB)+ COALESCE(js.kVAB_down, js.kVBC)+ COALESCE(js.kVAB_down, js.kVCA)
                )* 1000
              )/ 3
            ) * (
              (
                COALESCE(
                  js.IA_down, 
                  COALESCE(js.IA, p_ia.priorIA)
                ) + COALESCE(
                  js.IB_down, 
                  COALESCE(js.IB, p_ib.priorIB)
                ) + COALESCE(
                  js.IC_down, 
                  COALESCE(js.IC, p_ic.priorIC)
                )
              )/ 3
            ) * (
              COALESCE(
                js.pctPF_down, 
                COALESCE(
                  js.pctPF, p_prior_pctpf.priorpctPF
                )
              )/ 100
            )
          )/ 1000000
        )
    ) as MW, 
    (
      select 
        (
          (
            1.732 *(
              (
                (
                  COALESCE(js.kVAB_down, js.kVAB)+ COALESCE(js.kVAB_down, js.kVBC)+ COALESCE(js.kVAB_down, js.kVCA)
                )* 1000
              )/ 3
            ) * (
              (
                COALESCE(
                  js.IA_down, 
                  COALESCE(js.IA, p_ia.priorIA)
                ) + COALESCE(
                  js.IB_down, 
                  COALESCE(js.IB, p_ib.priorIB)
                ) + COALESCE(
                  js.IC_down, 
                  COALESCE(js.IC, p_ic.priorIC)
                )
              )/ 3
            ) * (
              SIN(
                ACOS(
                  COALESCE(
                    js.pctPF_down, 
                    COALESCE(
                      js.pctPF, p_prior_pctpf.priorpctPF
                    )
                  )/ 100
                )
              )
            )
          )/ 1000000
        )
    ) as MVar 
  from 
    join_records js 
    LEFT JOIN prior_ia p_ia ON js.start_time = p_ia.start_time 
    LEFT JOIN prior_ib p_ib ON js.start_time = p_ib.start_time 
    LEFT JOIN prior_ic p_ic ON js.start_time = p_ic.start_time 
    LEFT JOIN prior_pctpf p_prior_pctpf ON js.start_time = p_prior_pctpf.start_time
), 
timeseries as (
  select 
    (
      select 
        '2021-02-02' :: date
    ) + (n || ' minutes'):: interval start_time 
  from 
    generate_series(
      0, 
      (24 * 60), 
      30
    ) n 
  limit 
    49
) 
select 
  ts.start_time as start_time, 
  rr.kVAB as kVAB, 
  rr.kVBC, 
  rr.kVCA, 
  rr.IA, 
  rr.IB, 
  rr.IC, 
  rr.pctPF, 
  rr.MW, 
  rr.MVar 
from 
  result_records rr full 
  join timeseries ts on rr.start_time :: timestamp WITHOUT TIME ZONE = ts.start_time 
where 
  ts.start_time >= '2021-02-01 23:00:00' 
  and ts.start_time <= '2021-02-02 23:59:59.999' 
order by 
  ts.start_time ASC
