-- pivot table 작성방법 더 공부해야 할 듯!!
select -- pivot table 작성
  Region,
  sum(
    case -- 해당 카테고리 일때 상품량 계산
      when category = 'Furniture' then orders 
    end
  ) as Furniture,
  sum(
    case
      when category = 'Office Supplies' then orders
    end
  ) as 'Office Supplies',
  sum(
    case
      when category = 'Technology' then orders
    end
  ) as Technology
from
  (
    select
      region AS 'Region',
      category,
      count(distinct order_id) orders -- 주문량 계산
    from
      records
    group by -- 지역별로 카테고리 상품 묶음
      region,
      category
  ) 
  group by Region
  order by Region; -- Region 컬럼 기준 오름차순
