.class public Lcom/android/server/wm/OnePlusPerfManager$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "you"
.end annotation


# instance fields
.field public sis:Ljava/lang/String;

.field public you:I

.field public zta:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager$you;->zta:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/OnePlusPerfManager$you;->you:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager$you;->sis:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager$you;->zta:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager$you;->zta:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/OnePlusPerfManager$you;->you:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager$you;->sis:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager$you;->zta:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/wm/OnePlusPerfManager$you;->you:I

    iput-object p3, p0, Lcom/android/server/wm/OnePlusPerfManager$you;->sis:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PerfInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager$you;->zta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/OnePlusPerfManager$you;->you:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager$you;->sis:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
