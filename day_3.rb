class Day_3
  include Math

  attr_accessor :input, :startRow, :startColumn, :inputRow, :inputColumn, :value, :matrix, :numberOfRowsAndColumns, :bottomRow, :bottomColumn, :upperRow, :upperColumn

  def initialize(input)
    @input = input
    @numberOfRowsAndColumns = Math.sqrt(input).ceil
    @matrix = Array.new(numberOfRowsAndColumns, nil)
    for numberOfRows in 0..(numberOfRowsAndColumns-1)
      @matrix[numberOfRows] = Array.new(numberOfRowsAndColumns, nil)
    end
    @bottomColumn = 0
    @bottomRow = 0
    @upperColumn = @numberOfRowsAndColumns - 1
    @upperRow = @numberOfRowsAndColumns - 1
    @value = @numberOfRowsAndColumns * @numberOfRowsAndColumns
    createMatrix()
  end

  def createMatrix()
    while value >= 1
      toLeft()
      up()
      toRight()
      down()
    end
  end

  def checkValue(row, column)
    if @value == @input
      @inputRow = row
      @inputColumn = column
    end
    if @value == 1
      @startRow = row
      @startColumn = column
    end
    @value -= 1
  end

  def distance()
    (@inputRow-@startRow).abs + (@inputColumn-@startColumn).abs
  end

  def toLeft()
    for index in @upperColumn.downto(@bottomColumn)
      @matrix[@upperRow][index] = @value
      checkValue(@upperRow, index)
    end
    @upperRow -= 1
  end

  def up()
    for index in @upperRow.downto(@bottomRow)
      @matrix[index][@bottomColumn] = @value
      checkValue(index, @bottomColumn)
    end
    @bottomColumn +=1
  end

  def toRight()
    for index in @bottomColumn..@upperColumn
      @matrix[@bottomRow][index] = @value
      checkValue(@bottomRow, index)
    end
    @bottomRow += 1
  end

  def down()
    for index in @bottomRow..@upperRow
      @matrix[index][@upperColumn] = @value
      checkValue(index, @upperColumn)
    end
    @upperColumn -=1
  end
end
print Day_3.new(312051).distance()
#puts Day_3.new.run(312051)
