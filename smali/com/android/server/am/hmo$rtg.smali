.class Lcom/android/server/am/hmo$rtg;
.super Lcom/android/server/am/igw;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/hmo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "rtg"
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/am/hmo;


# direct methods
.method private constructor <init>(Lcom/android/server/am/hmo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/hmo$rtg;->you:Lcom/android/server/am/hmo;

    invoke-direct {p0}, Lcom/android/server/am/igw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/hmo;Lcom/android/server/am/hmo$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/hmo$rtg;-><init>(Lcom/android/server/am/hmo;)V

    return-void
.end method


# virtual methods
.method public noteNotificationChanged(Ljava/lang/String;IIZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/hmo$rtg;->you:Lcom/android/server/am/hmo;

    invoke-static {p0, p2}, Lcom/android/server/am/hmo;->igw(Lcom/android/server/am/hmo;I)V

    return-void
.end method

.method public sis(II)V
    .locals 1

    const/4 v0, 0x6

    if-gt p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/hmo$rtg;->you:Lcom/android/server/am/hmo;

    invoke-static {p0, p1}, Lcom/android/server/am/hmo;->igw(Lcom/android/server/am/hmo;I)V

    :cond_0
    return-void
.end method
