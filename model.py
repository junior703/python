import web, datetime

db_host='jnc6n3xpbgc3kek2.chr7pe7iynqr.eu-west-1.rds.amazonaws.com'
db_name='mrmmjercn0t6zy7r'
db_user='gzkefyx4beash2ge'
db_pw='vjs58dhu3pasmilz'

db=web.database(
  dbn='mysql',
  host=db_host,
  db=db_name,
  user=db_user,
  pw=db_pw
	)

def get_posts():
    return db.select('productos', order='id_producto ASC')

def get_post(id_producto):
    try:
        return db.select('productos', where='id_producto=$id_producto', vars=locals())[0]
    except:
        return None

def new_post(producto, varchar, existencias, precio_compra, precio_venta):
    db.insert('productos', producto=producto, descripcion=varchar, existencias=existencias, precio_compra=precio_compra, precio_venta=precio_venta, posted_on=datetime.datetime.utcnow())

def del_post(id_producto):
    db.delete('productos', where="id_producto=$id_producto", vars=locals())

def update_post(id_producto, producto, varchar, existencias, precio_compra, precio_venta):
    db.update('productos', where="id_producto=$id_producto", vars=locals(),
        producto=producto, descripcion=varchar,  existencias=existencias, precio_compra=precio_compra, precio_venta=precio_venta, posted_on=datetime.datetime.utcnow())