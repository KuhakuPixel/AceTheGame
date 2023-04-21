package com.kuhakupixel.atg.ui.util

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.rememberScrollState
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import java.lang.IllegalArgumentException


@Composable
fun CreateTable(
    colNames: List<String>,
    colWeights: List<Float>,
    rowCount: Int,
    onRowClicked: (rowIndex: Int) -> Unit,
    drawCell: @Composable RowScope.(rowIndex: Int, colIndex: Int, cellModifier: Modifier) -> Unit,
) {
    @Composable
    fun RowScope.GetCellModifier(
        weight: Float
    ): Modifier {
        return Modifier
            .border(1.dp, MaterialTheme.colorScheme.primary)
            .weight(weight = weight)
            .padding(8.dp)
            // just in case if text is too long
            .horizontalScroll(rememberScrollState())
    }

    @Composable
    fun RowScope.TableCell(
        text: String,
        weight: Float
    ) {
        Text(
            text = text,
            modifier = GetCellModifier(weight)
        )
    }
    if (colNames.size != colWeights.size) {
        throw IllegalArgumentException("headerNames and header Weight size are not equal")
    }
    if (colNames.isEmpty()) {
        throw IllegalArgumentException("headerNames empty")
    }

    val colCount: Int = colNames.size
    //
    LazyColumn(
        Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        // header

        item {
            Row(Modifier.background(MaterialTheme.colorScheme.primaryContainer)) {
                for (i in 0 until colNames.size)
                    TableCell(text = colNames[i], weight = colWeights[i])
            }
        }
        // items
        items(rowCount) { rowIndex: Int ->
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    // when row is clicked
                    .clickable {
                        onRowClicked(rowIndex)
                    },
            ) {
                for (colIndex in 0 until colCount) {
                    this.drawCell(
                        rowIndex = rowIndex,
                        colIndex = colIndex,
                        cellModifier = GetCellModifier(weight = colWeights[colIndex]),
                    )
                }
            }
        }
    }
}