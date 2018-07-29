require( 'pg' )

class SqlRunner

  def self.run( sql, values = [] )
    begin
      db = PG.connect( {dbname: 'dasdkdsaldkj',
host: 'ec2-50-19-232-205.compute-1.amazonaws.com',
port: 5432, user: 'gtzqcijydjhouw', password: '924c1414c123cf11a60d0fe5a5b66745bbd2a81fedde8336d7509f6e034a07d0'})
      db.prepare("query", sql)
      result = db.exec_prepared( "query", values )
    ensure
      db.close() if db != nil
    end
    return result
  end

end
