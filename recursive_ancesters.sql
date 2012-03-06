with recursive ancestors(id, name) as (
  select things.id, things.name
  from things, links
  where things.id = links.child_id
    and things.id=112
  union
    select things.id, things.name
    from things, ancestors, links
    where things.id = links.parent_id
      and links.child_id = ancestors.id
)
select id, name
from ancestors;

select * from links;

select things.id, things.name, links.id, links.child_id, links.parent_id
from things, links
where things.id = links.child_id
  and things.id=9;

select id,
       name,
       parents_count,
       children_count
from things;
