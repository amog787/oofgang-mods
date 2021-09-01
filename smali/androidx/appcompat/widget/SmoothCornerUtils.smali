.class public Landroidx/appcompat/widget/SmoothCornerUtils;
.super Ljava/lang/Object;
.source "SmoothCornerUtils.java"


# direct methods
.method public static calculateBezierCornerPaths(Landroid/graphics/RectF;F)Ljava/util/List;
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "F)",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v10, v0, Landroid/graphics/RectF;->left:F

    sub-float v3, v2, v10

    .line 32
    iget v11, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v4, v11, v0

    const/4 v5, 0x0

    cmpg-float v6, v3, v5

    if-lez v6, :cond_3

    cmpg-float v6, v4, v5

    if-lez v6, :cond_3

    cmpg-float v6, p1, v5

    if-gtz v6, :cond_0

    goto/16 :goto_1

    :cond_0
    const v6, 0x3f561134    # 0.8362f

    const/high16 v15, 0x40000000    # 2.0f

    div-float v12, v3, v15

    div-float v15, v4, v15

    .line 60
    invoke-static {v12, v15}, Ljava/lang/Math;->min(FF)F

    move-result v16

    div-float v16, p1, v16

    const/high16 v17, 0x3f000000    # 0.5f

    cmpl-float v18, v16, v17

    const/high16 v9, 0x3f800000    # 1.0f

    if-lez v18, :cond_1

    sub-float v17, v16, v17

    const v18, 0x3ecccccd    # 0.4f

    div-float v13, v17, v18

    .line 63
    invoke-static {v9, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    const v17, 0x3e0e1bf0

    mul-float v13, v13, v17

    sub-float v13, v9, v13

    goto :goto_0

    :cond_1
    move v13, v9

    :goto_0
    const v17, 0x3f19999a    # 0.6f

    cmpl-float v18, v16, v17

    if-lez v18, :cond_2

    sub-float v16, v16, v17

    const v17, 0x3e99999a    # 0.3f

    div-float v8, v16, v17

    .line 71
    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const v16, 0x3d2de440

    mul-float v8, v8, v16

    add-float/2addr v9, v8

    :cond_2
    const/high16 v8, 0x42c80000    # 100.0f

    div-float v8, p1, v8

    const v16, 0x430030a4    # 128.19f

    mul-float v8, v8, v16

    mul-float/2addr v13, v8

    .line 79
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    sub-float v14, v3, v13

    .line 80
    invoke-static {v12, v14}, Ljava/lang/Math;->max(FF)F

    move-result v17

    add-float v7, v10, v17

    invoke-virtual {v8, v7, v0}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v3, v10

    mul-float v6, v6, p1

    mul-float/2addr v6, v9

    sub-float v7, v3, v6

    mul-float v5, v5, p1

    add-float v17, v0, v5

    const v9, 0x3f2cac08    # 0.6745f

    mul-float v9, v9, p1

    sub-float v28, v3, v9

    const v16, 0x3d3e0ded    # 0.0464f

    mul-float v16, v16, p1

    add-float v29, v0, v16

    const v18, 0x3f02f838    # 0.5116f

    mul-float v18, v18, p1

    sub-float v30, v3, v18

    const v20, 0x3e08ce70    # 0.1336f

    mul-float v20, v20, p1

    add-float v31, v0, v20

    move-object/from16 v21, v8

    move/from16 v22, v7

    move/from16 v23, v17

    move/from16 v24, v28

    move/from16 v25, v29

    move/from16 v26, v30

    move/from16 v27, v31

    .line 81
    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v19, 0x3eb27bb3    # 0.3486f

    mul-float v19, v19, p1

    sub-float v32, v3, v19

    const v21, 0x3e61ff2e    # 0.2207f

    mul-float v33, p1, v21

    add-float v34, v0, v33

    sub-float v35, v3, v33

    add-float v36, v0, v19

    sub-float v37, v3, v20

    add-float v38, v0, v18

    move-object/from16 v21, v8

    move/from16 v22, v32

    move/from16 v23, v34

    move/from16 v24, v35

    move/from16 v25, v36

    move/from16 v26, v37

    move/from16 v27, v38

    .line 84
    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v39, v3, v16

    add-float v40, v0, v9

    sub-float v41, v3, v5

    add-float v42, v0, v6

    .line 89
    invoke-static {v15, v13}, Ljava/lang/Math;->min(FF)F

    move-result v21

    add-float v27, v0, v21

    move-object/from16 v21, v8

    move/from16 v22, v39

    move/from16 v23, v40

    move/from16 v24, v41

    move/from16 v25, v42

    move/from16 v26, v3

    .line 87
    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 90
    invoke-static {v12, v14}, Ljava/lang/Math;->max(FF)F

    move-result v21

    move/from16 v43, v11

    add-float v11, v2, v21

    invoke-static {v12, v14}, Ljava/lang/Math;->max(FF)F

    move-result v21

    move/from16 v44, v2

    sub-float v2, v0, v21

    invoke-virtual {v8, v11, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 91
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 92
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    sub-float v8, v4, v13

    .line 96
    invoke-static {v15, v8}, Ljava/lang/Math;->max(FF)F

    move-result v11

    add-float/2addr v11, v0

    invoke-virtual {v2, v3, v11}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v4, v0

    sub-float v11, v4, v6

    sub-float v45, v4, v9

    sub-float v3, v4, v18

    move-object/from16 v21, v2

    move/from16 v22, v41

    move/from16 v23, v11

    move/from16 v24, v39

    move/from16 v25, v45

    move/from16 v26, v37

    move/from16 v27, v3

    .line 97
    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v37, v4, v19

    sub-float v39, v4, v33

    sub-float v41, v4, v20

    move/from16 v22, v35

    move/from16 v23, v37

    move/from16 v24, v32

    move/from16 v25, v39

    move/from16 v26, v30

    move/from16 v27, v41

    .line 100
    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v30, v4, v16

    sub-float v32, v4, v5

    .line 105
    invoke-static {v12, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    add-float v27, v10, v14

    move-object/from16 v22, v2

    move/from16 v23, v28

    move/from16 v24, v30

    move/from16 v25, v7

    move/from16 v26, v32

    move/from16 v28, v4

    .line 103
    invoke-virtual/range {v22 .. v28}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 106
    invoke-static {v15, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-float v7, v44, v7

    invoke-static {v15, v8}, Ljava/lang/Math;->max(FF)F

    move-result v14

    add-float v14, v43, v14

    invoke-virtual {v2, v7, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 107
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 108
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 112
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v7

    add-float/2addr v7, v10

    invoke-virtual {v2, v7, v4}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v28, v10, v6

    add-float v14, v10, v9

    add-float v18, v10, v18

    move-object/from16 v21, v2

    move/from16 v22, v28

    move/from16 v23, v32

    move/from16 v24, v14

    move/from16 v25, v30

    move/from16 v26, v18

    move/from16 v27, v41

    .line 113
    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v19, v10, v19

    add-float v30, v10, v33

    add-float v20, v10, v20

    move/from16 v22, v19

    move/from16 v23, v39

    move/from16 v24, v30

    move/from16 v25, v37

    move/from16 v26, v20

    move/from16 v27, v3

    .line 116
    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v24, v10, v16

    add-float v22, v10, v5

    .line 121
    invoke-static {v15, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float v9, v0, v3

    move-object v3, v2

    move/from16 v4, v24

    move/from16 v5, v45

    move/from16 v6, v22

    move v7, v11

    move v8, v10

    .line 119
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 122
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v3, v10, v3

    invoke-static {v15, v13}, Ljava/lang/Math;->min(FF)F

    move-result v4

    add-float v11, v43, v4

    invoke-virtual {v2, v3, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 123
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 124
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 128
    invoke-static {v15, v13}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v2, v10, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v21, v2

    move/from16 v23, v42

    move/from16 v25, v40

    move/from16 v27, v38

    .line 129
    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 v22, v30

    move/from16 v23, v36

    move/from16 v24, v19

    move/from16 v25, v34

    move/from16 v26, v18

    move/from16 v27, v31

    .line 132
    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 137
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-float/2addr v3, v10

    move-object v12, v2

    move v8, v13

    move v13, v14

    move/from16 v14, v29

    move v4, v15

    move/from16 v15, v28

    move/from16 v16, v17

    move/from16 v17, v3

    move/from16 v18, v0

    .line 135
    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 138
    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v10, v3

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {v2, v10, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 139
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 140
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-object v1
.end method
