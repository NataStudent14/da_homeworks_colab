task7 (lesson4)
-- По предыдущему view (count_products_by_makers) сделать график в colab (X: maker, y: count)

request = """  
select maker, 'count' as count
from count_products_by_makers  
group by maker  
"""  
df = pd.read_sql_query(request, conn)  
fig = px.bar(x=df.maker.to_list(), y=df['count'].to_list(), labels={'x':'maker', 'y':'count'})  
fig.show()


---task11 (lesson4)
-- Корабли: По предыдущему view (sunk_ships_by_classes) сделать график в colab (X: class, Y: count)


request = """ 
select class, 'count' as count 
from sunk_ships_by_classes 
group by class 
""" 
df = pd.read_sql_query(request, conn) 
fig = px.bar(x=df.class.to_list(), y=df['count'].to_list(), labels={'x':'class', 'y':'count'}) 
fig.show()


--task13 (lesson4)
-- Корабли: Сделать график в colab по таблице classes с количеством классов по странам (X: country, Y: count)

--
request = """  
select country, 'count' as count
from classes  
group by country  
"""  
df = pd.read_sql_query(request, conn)  
fig = px.bar(x=df.country.to_list(), y=df['count'].to_list(), labels={'x':'country', 'y':'count'})  
fig.show()


--task16 (lesson4)
-- Корабли: Построить график с количеством запущенных на воду кораблей и годом запуска (X: year, Y: count)
request = """  
select launched as year, 'count' as count
from ships  
group by year  
"""  
df = pd.read_sql_query(request, conn)  
fig = px.bar(x=df.year.to_list(), y=df['count'].to_list(), labels={'x':'year', 'y':'count'})  
fig.show()