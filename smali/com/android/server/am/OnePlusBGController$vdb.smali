.class public Lcom/android/server/am/OnePlusBGController$vdb;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "vdb"
.end annotation


# instance fields
.field public cno:Ljava/lang/String;

.field public rtg:Z

.field public sis:Z

.field public ssp:Lcom/android/server/am/OnePlusBGController$OptType;

.field public tsu:D

.field public you:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public zta:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/am/OnePlusBGController$AppBucketRanking;Lcom/android/server/am/OnePlusBGController$MyDrainType;ZDZLcom/android/server/am/OnePlusBGController$OptType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$vdb;->zta:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    iput-object p3, p0, Lcom/android/server/am/OnePlusBGController$vdb;->you:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    iput-boolean p4, p0, Lcom/android/server/am/OnePlusBGController$vdb;->sis:Z

    iput-wide p5, p0, Lcom/android/server/am/OnePlusBGController$vdb;->tsu:D

    iput-boolean p7, p0, Lcom/android/server/am/OnePlusBGController$vdb;->rtg:Z

    iput-object p8, p0, Lcom/android/server/am/OnePlusBGController$vdb;->ssp:Lcom/android/server/am/OnePlusBGController$OptType;

    return-void
.end method
