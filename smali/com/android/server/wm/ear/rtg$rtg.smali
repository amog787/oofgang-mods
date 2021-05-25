.class Lcom/android/server/wm/ear/rtg$rtg;
.super Lcom/android/server/wm/ear/rtg$ssp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ear/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "rtg"
.end annotation


# instance fields
.field final synthetic rtg:Lcom/android/server/wm/ear/rtg;

.field private final sis:I

.field private final tsu:Landroid/graphics/Bitmap;

.field private final you:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ear/rtg;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/ear/rtg$rtg;->rtg:Lcom/android/server/wm/ear/rtg;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ear/rtg$ssp;-><init>(Lcom/android/server/wm/ear/rtg;Lcom/android/server/wm/ear/rtg$zta;)V

    iput-object p2, p0, Lcom/android/server/wm/ear/rtg$rtg;->you:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/wm/ear/rtg$rtg;->sis:I

    iput-object p4, p0, Lcom/android/server/wm/ear/rtg$rtg;->tsu:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/wm/ear/rtg$rtg;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ear/rtg$rtg;->you:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method rtg()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ear/rtg$rtg;->tsu:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "Invalid snapshot bitmap"

    :goto_0
    invoke-static {p0}, Lcom/android/server/wm/ear/cno;->cno(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ear/rtg$rtg;->rtg:Lcom/android/server/wm/ear/rtg;

    iget v2, p0, Lcom/android/server/wm/ear/rtg$rtg;->sis:I

    iget-object v3, p0, Lcom/android/server/wm/ear/rtg$rtg;->you:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/ear/rtg;->qbh(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeBuffer bitmapFile =: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/ear/cno;->ssp(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object p0, p0, Lcom/android/server/wm/ear/rtg$rtg;->tsu:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5f

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for persisting.\ne =:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method sis()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ear/rtg$rtg;->rtg:Lcom/android/server/wm/ear/rtg;

    iget v1, p0, Lcom/android/server/wm/ear/rtg$rtg;->sis:I

    invoke-static {v0, v1}, Lcom/android/server/wm/ear/rtg;->cno(Lcom/android/server/wm/ear/rtg;I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create snapshot directory for user dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ear/rtg$rtg;->rtg:Lcom/android/server/wm/ear/rtg;

    iget v2, p0, Lcom/android/server/wm/ear/rtg$rtg;->sis:I

    invoke-static {v1, v2}, Lcom/android/server/wm/ear/rtg;->kth(Lcom/android/server/wm/ear/rtg;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ear/cno;->ssp(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ear/rtg$rtg;->rtg()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ear/rtg$rtg;->rtg:Lcom/android/server/wm/ear/rtg;

    iget v1, p0, Lcom/android/server/wm/ear/rtg$rtg;->sis:I

    iget-object p0, p0, Lcom/android/server/wm/ear/rtg$rtg;->you:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/ear/rtg;->bio(Lcom/android/server/wm/ear/rtg;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method you()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/ear/rtg$rtg;->rtg:Lcom/android/server/wm/ear/rtg;

    invoke-static {v0}, Lcom/android/server/wm/ear/rtg;->ssp(Lcom/android/server/wm/ear/rtg;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method zta()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/ear/rtg$rtg;->rtg:Lcom/android/server/wm/ear/rtg;

    invoke-static {v0}, Lcom/android/server/wm/ear/rtg;->ssp(Lcom/android/server/wm/ear/rtg;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    return-void
.end method
