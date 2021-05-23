.class public Lcom/android/server/am/OnePlusBGController$dma;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dma"
.end annotation


# instance fields
.field private zta:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/OnePlusBGController$oxb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController$dma;->zta:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public sis()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/am/OnePlusBGController$oxb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$dma;->zta:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$dma;->zta:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public tsu(Ljava/lang/String;IDDDDLcom/android/server/am/OnePlusBGController$AppBucketRanking;Lcom/android/server/am/OnePlusBGController$MyDrainType;ZZLcom/android/server/am/OnePlusBGController$OptType;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/OnePlusBGController$dma;->zta:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    new-instance v15, Lcom/android/server/am/OnePlusBGController$oxb;

    move-object v2, v15

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v18, v15

    move/from16 v15, p13

    move/from16 v16, p14

    move-object/from16 v17, p15

    invoke-direct/range {v2 .. v17}, Lcom/android/server/am/OnePlusBGController$oxb;-><init>(Ljava/lang/String;IDDDDLcom/android/server/am/OnePlusBGController$AppBucketRanking;Lcom/android/server/am/OnePlusBGController$MyDrainType;ZZLcom/android/server/am/OnePlusBGController$OptType;)V

    iget-object v0, v0, Lcom/android/server/am/OnePlusBGController$dma;->zta:Ljava/util/List;

    move-object/from16 v2, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public you()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$dma;->zta:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$dma;->zta:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$dma;->zta:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$oxb;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$oxb;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public zta()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$dma;->zta:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$dma;->zta:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
