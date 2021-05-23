.class public Lcom/android/server/engineer/cno$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/cno;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "you"
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/engineer/cno;

.field protected zta:J


# direct methods
.method protected constructor <init>(Lcom/android/server/engineer/cno;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/engineer/cno$you;->you:Lcom/android/server/engineer/cno;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/engineer/cno$you;->zta:J

    return-void
.end method


# virtual methods
.method public cno(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public rtg(ILjava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public sis()V
    .locals 0

    return-void
.end method

.method public ssp(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public tsu()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/engineer/cno$you;->zta:J

    return-wide v0
.end method

.method public you(Lcom/android/server/engineer/cno$you;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public zta()V
    .locals 0

    return-void
.end method
