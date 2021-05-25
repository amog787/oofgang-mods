.class public Lcom/android/server/OpPowerControllerService$ywr;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OpPowerControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ywr"
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/OpPowerControllerService;

.field private final you:[Lcom/android/server/OpPowerControllerService$bio;

.field private final zta:[[D


# direct methods
.method public constructor <init>(Lcom/android/server/OpPowerControllerService;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$ywr;->sis:Lcom/android/server/OpPowerControllerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1800()I

    move-result p1

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x0

    aput p1, v1, v0

    const-class p1, D

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$ywr;->zta:[[D

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1800()I

    move-result p1

    new-array p1, p1, [Lcom/android/server/OpPowerControllerService$bio;

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$ywr;->you:[Lcom/android/server/OpPowerControllerService$bio;

    return-void
.end method

.method private dma(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isDouble: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpPowerControllerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private gck([Lcom/android/server/OpPowerControllerService$bio;[[D)D
    .locals 9

    array-length v0, p1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v5, p1, v4

    invoke-virtual {v5}, Lcom/android/server/OpPowerControllerService$bio;->zta()[[D

    move-result-object v5

    move v6, v1

    :goto_1
    aget-object v7, p1, v4

    invoke-virtual {v7}, Lcom/android/server/OpPowerControllerService$bio;->you()I

    move-result v7

    if-ge v6, v7, :cond_0

    aget-object v7, v5, v6

    aget-object v8, p2, v4

    invoke-direct {p0, v7, v8}, Lcom/android/server/OpPowerControllerService$ywr;->wtn([D[D)D

    move-result-wide v7

    add-double/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method private oif([[DIIII)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct/range {p0 .. p1}, Lcom/android/server/OpPowerControllerService$ywr;->qbh([[D)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v6, v0, Lcom/android/server/OpPowerControllerService$ywr;->you:[Lcom/android/server/OpPowerControllerService$bio;

    array-length v7, v6

    if-ge v5, v7, :cond_0

    new-instance v7, Lcom/android/server/OpPowerControllerService$bio;

    iget-object v8, v0, Lcom/android/server/OpPowerControllerService$ywr;->sis:Lcom/android/server/OpPowerControllerService;

    invoke-direct {v7, v8, v1, v2}, Lcom/android/server/OpPowerControllerService$bio;-><init>(Lcom/android/server/OpPowerControllerService;II)V

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/Random;

    move/from16 v6, p5

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Ljava/util/Random;-><init>(J)V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    :cond_1
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    if-gt v7, v3, :cond_2

    invoke-virtual {v5, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    if-ne v7, v3, :cond_1

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v6, v4

    :goto_1
    const-string v7, "OpPowerControllerService"

    if-ge v6, v3, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The choosen data set is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v4

    :goto_2
    if-ge v7, v2, :cond_3

    iget-object v8, v0, Lcom/android/server/OpPowerControllerService$ywr;->zta:[[D

    aget-object v8, v8, v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v9, p1, v9

    aget-wide v9, v9, v7

    aput-wide v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$3300()Z

    move-result v5

    const-string v6, "Centroids: "

    if-eqz v5, :cond_5

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/server/OpPowerControllerService$ywr;->zta:[[D

    invoke-direct {v0, v5}, Lcom/android/server/OpPowerControllerService$ywr;->qbh([[D)V

    :cond_5
    move v5, v4

    :goto_3
    if-ge v5, v1, :cond_7

    iget-object v8, v0, Lcom/android/server/OpPowerControllerService$ywr;->zta:[[D

    aget-object v9, p1, v5

    invoke-direct {v0, v8, v9, v3}, Lcom/android/server/OpPowerControllerService$ywr;->sis([[D[DI)I

    move-result v8

    move v9, v4

    :goto_4
    if-ge v9, v2, :cond_6

    iget-object v10, v0, Lcom/android/server/OpPowerControllerService$ywr;->you:[Lcom/android/server/OpPowerControllerService$bio;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Lcom/android/server/OpPowerControllerService$bio;->zta()[[D

    move-result-object v11

    invoke-virtual {v10}, Lcom/android/server/OpPowerControllerService$bio;->you()I

    move-result v10

    aget-object v10, v11, v10

    aget-object v11, p1, v5

    aget-wide v11, v11, v9

    aput-wide v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    iget-object v9, v0, Lcom/android/server/OpPowerControllerService$ywr;->you:[Lcom/android/server/OpPowerControllerService$bio;

    aget-object v10, v9, v8

    aget-object v8, v9, v8

    invoke-virtual {v8}, Lcom/android/server/OpPowerControllerService$bio;->you()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v10, v8}, Lcom/android/server/OpPowerControllerService$bio;->tsu(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    iget-object v5, v0, Lcom/android/server/OpPowerControllerService$ywr;->you:[Lcom/android/server/OpPowerControllerService$bio;

    iget-object v10, v0, Lcom/android/server/OpPowerControllerService$ywr;->zta:[[D

    invoke-direct {v0, v5, v10}, Lcom/android/server/OpPowerControllerService$ywr;->gck([Lcom/android/server/OpPowerControllerService$bio;[[D)D

    move-result-wide v10

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$3300()Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Initial sum of squre difference is "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v5, v4

    :cond_9
    :goto_5
    move-wide/from16 v18, v8

    move-wide v8, v10

    move-wide/from16 v10, v18

    sub-double v10, v8, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$2400()I

    move-result v12

    int-to-double v12, v12

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_10

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$3300()Z

    move-result v10

    if-eqz v10, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Iteration: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    :cond_a
    move v10, v4

    :goto_6
    if-ge v10, v3, :cond_b

    iget-object v11, v0, Lcom/android/server/OpPowerControllerService$ywr;->zta:[[D

    iget-object v12, v0, Lcom/android/server/OpPowerControllerService$ywr;->you:[Lcom/android/server/OpPowerControllerService$bio;

    aget-object v12, v12, v10

    invoke-direct {v0, v12, v2}, Lcom/android/server/OpPowerControllerService$ywr;->tsu(Lcom/android/server/OpPowerControllerService$bio;I)[D

    move-result-object v12

    aput-object v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_b
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$3300()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v0, Lcom/android/server/OpPowerControllerService$ywr;->zta:[[D

    invoke-direct {v0, v10}, Lcom/android/server/OpPowerControllerService$ywr;->qbh([[D)V

    :cond_c
    iget-object v10, v0, Lcom/android/server/OpPowerControllerService$ywr;->you:[Lcom/android/server/OpPowerControllerService$bio;

    iget-object v11, v0, Lcom/android/server/OpPowerControllerService$ywr;->zta:[[D

    invoke-direct {v0, v10, v11}, Lcom/android/server/OpPowerControllerService$ywr;->gck([Lcom/android/server/OpPowerControllerService$bio;[[D)D

    move-result-wide v10

    move v12, v4

    :goto_7
    iget-object v13, v0, Lcom/android/server/OpPowerControllerService$ywr;->you:[Lcom/android/server/OpPowerControllerService$bio;

    array-length v14, v13

    if-ge v12, v14, :cond_d

    aget-object v13, v13, v12

    invoke-virtual {v13, v4}, Lcom/android/server/OpPowerControllerService$bio;->tsu(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_d
    move v12, v4

    :goto_8
    if-ge v12, v1, :cond_f

    iget-object v13, v0, Lcom/android/server/OpPowerControllerService$ywr;->zta:[[D

    aget-object v14, p1, v12

    invoke-direct {v0, v13, v14, v3}, Lcom/android/server/OpPowerControllerService$ywr;->sis([[D[DI)I

    move-result v13

    move v14, v4

    :goto_9
    if-ge v14, v2, :cond_e

    iget-object v15, v0, Lcom/android/server/OpPowerControllerService$ywr;->you:[Lcom/android/server/OpPowerControllerService$bio;

    aget-object v15, v15, v13

    invoke-virtual {v15}, Lcom/android/server/OpPowerControllerService$bio;->zta()[[D

    move-result-object v16

    invoke-virtual {v15}, Lcom/android/server/OpPowerControllerService$bio;->you()I

    move-result v15

    aget-object v15, v16, v15

    aget-object v16, p1, v12

    aget-wide v16, v16, v14

    aput-wide v16, v15, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_e
    iget-object v14, v0, Lcom/android/server/OpPowerControllerService$ywr;->you:[Lcom/android/server/OpPowerControllerService$bio;

    aget-object v15, v14, v13

    aget-object v13, v14, v13

    invoke-virtual {v13}, Lcom/android/server/OpPowerControllerService$bio;->you()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v15, v13}, Lcom/android/server/OpPowerControllerService$bio;->tsu(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_f
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$3300()Z

    move-result v12

    if-eqz v12, :cond_9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "After this iteration, the sum of squre difference is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_10
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$3300()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "The result is:"

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    if-ge v4, v3, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cluster "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/OpPowerControllerService$ywr;->you:[Lcom/android/server/OpPowerControllerService$bio;

    aget-object v1, v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/OpPowerControllerService$ywr;->ywr(Lcom/android/server/OpPowerControllerService$bio;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_11
    return-void
.end method

.method private qbh([[D)V
    .locals 6

    const-string p0, "OpPowerControllerService"

    const-string v0, "Array:"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v0

    :goto_1
    aget-object v4, p1, v0

    array-length v4, v4

    if-ge v3, v4, :cond_1

    aget-object v4, p1, v1

    aget-wide v4, v4, v3

    double-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    aget-object v4, p1, v0

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_0

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private sis([[D[DI)I
    .locals 7

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-direct {p0, v1, p2}, Lcom/android/server/OpPowerControllerService$ywr;->wtn([D[D)D

    move-result-wide v1

    const/4 v3, 0x1

    :goto_0
    if-ge v3, p3, :cond_1

    aget-object v4, p1, v3

    invoke-direct {p0, v4, p2}, Lcom/android/server/OpPowerControllerService$ywr;->wtn([D[D)D

    move-result-wide v4

    cmpg-double v6, v4, v1

    if-gez v6, :cond_0

    move v0, v3

    move-wide v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$3300()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "label="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpPowerControllerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method private tsu(Lcom/android/server/OpPowerControllerService$bio;I)[D
    .locals 8

    invoke-virtual {p1}, Lcom/android/server/OpPowerControllerService$bio;->you()I

    move-result p0

    new-array v0, p2, [D

    invoke-virtual {p1}, Lcom/android/server/OpPowerControllerService$bio;->zta()[[D

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_1

    move v3, v1

    :goto_1
    if-ge v3, p2, :cond_0

    aget-wide v4, v0, v3

    aget-object v6, p1, v2

    aget-wide v6, v6, v3

    add-double/2addr v4, v6

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v1, p2, :cond_2

    aget-wide v2, v0, v1

    int-to-double v4, p0

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method private wtn([D[D)D
    .locals 6

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    :goto_0
    array-length v2, p1

    if-ge p0, v2, :cond_0

    aget-wide v2, p1, p0

    aget-wide v4, p2, p0

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private you()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1800()I

    move-result v2

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/OpPowerControllerService$ywr;->zta:[[D

    aget-object v3, v3, v1

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private ywr(Lcom/android/server/OpPowerControllerService$bio;)V
    .locals 7

    const-string p0, "OpPowerControllerService"

    const-string v0, "Cluster:"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/OpPowerControllerService$bio;->you()I

    move-result v2

    if-ge v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/OpPowerControllerService$bio;->zta()[[D

    move-result-object v3

    move v4, v0

    :goto_1
    aget-object v5, v3, v0

    array-length v5, v5

    if-ge v4, v5, :cond_1

    aget-object v5, v3, v1

    aget-wide v5, v5, v4

    double-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    aget-object v5, v3, v0

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_0

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic zta(Lcom/android/server/OpPowerControllerService$ywr;[[DIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/OpPowerControllerService$ywr;->oif([[DIIII)V

    return-void
.end method


# virtual methods
.method public bio(I)I
    .locals 2

    const/4 v0, -0x1

    if-ltz p1, :cond_1

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1800()I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$ywr;->you:[Lcom/android/server/OpPowerControllerService$bio;

    aget-object v1, p0, p1

    if-eqz v1, :cond_1

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/server/OpPowerControllerService$bio;->you()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public cno(I)J
    .locals 1

    if-ltz p1, :cond_1

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1800()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$ywr;->zta:[[D

    aget-object p0, p0, p1

    const/4 p1, 0x1

    aget-wide p0, p0, p1

    double-to-long p0, p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public igw(II)D
    .locals 9

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    if-ltz p1, :cond_4

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1800()I

    move-result v2

    if-le p1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p2, :cond_4

    const/4 v2, 0x2

    if-le p2, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/OpPowerControllerService$ywr;->you:[Lcom/android/server/OpPowerControllerService$bio;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/server/OpPowerControllerService$bio;->you()I

    move-result v2

    if-gtz v2, :cond_2

    return-wide v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$ywr;->you:[Lcom/android/server/OpPowerControllerService$bio;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/OpPowerControllerService$bio;->zta()[[D

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/OpPowerControllerService$ywr;->rtg(II)D

    move-result-wide p0

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    aget-wide v5, v5, p2

    sub-double/2addr v5, p0

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    int-to-double p0, v2

    div-double/2addr v3, p0

    return-wide v3

    :cond_4
    :goto_1
    return-wide v0
.end method

.method public kth(II)D
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/OpPowerControllerService$ywr;->igw(II)D

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/OpPowerControllerService$ywr;->rtg(II)D

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmpl-double p2, p0, v2

    if-lez p2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v0, p0

    return-wide v0

    :cond_0
    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    return-wide p0
.end method

.method public rtg(II)D
    .locals 5

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    if-ltz p1, :cond_4

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1800()I

    move-result v2

    if-le p1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p2, :cond_4

    const/4 v2, 0x2

    if-le p2, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/OpPowerControllerService$ywr;->you:[Lcom/android/server/OpPowerControllerService$bio;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/server/OpPowerControllerService$bio;->you()I

    move-result v2

    if-gtz v2, :cond_2

    return-wide v0

    :cond_2
    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$ywr;->you:[Lcom/android/server/OpPowerControllerService$bio;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/server/OpPowerControllerService$bio;->zta()[[D

    move-result-object p0

    const-wide/16 v0, 0x0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v2, :cond_3

    aget-object v3, p0, p1

    aget-wide v3, v3, p2

    add-double/2addr v0, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    int-to-double p0, v2

    div-double/2addr v0, p0

    :cond_4
    :goto_1
    return-wide v0
.end method

.method public ssp(I)J
    .locals 1

    if-ltz p1, :cond_1

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1800()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$ywr;->zta:[[D

    aget-object p0, p0, p1

    const/4 p1, 0x0

    aget-wide p0, p0, p1

    double-to-long p0, p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method
