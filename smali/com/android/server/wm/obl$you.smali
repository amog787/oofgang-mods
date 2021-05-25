.class Lcom/android/server/wm/obl$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/ear/sis$tsu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/obl;->igw(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/drawable/BitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rtg:Lcom/android/server/wm/obl;

.field final synthetic sis:J

.field final synthetic tsu:Lcom/android/internal/policy/PhoneWindow;

.field final synthetic you:Ljava/lang/String;

.field final synthetic zta:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method constructor <init>(Lcom/android/server/wm/obl;Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;JLcom/android/internal/policy/PhoneWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/obl$you;->rtg:Lcom/android/server/wm/obl;

    iput-object p2, p0, Lcom/android/server/wm/obl$you;->zta:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p3, p0, Lcom/android/server/wm/obl$you;->you:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/wm/obl$you;->sis:J

    iput-object p6, p0, Lcom/android/server/wm/obl$you;->tsu:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zta(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load bitmap onSnapshotLoaded bitmapDrawable =: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/obl$you;->zta:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",packageName =: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",fixedPackageName =: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/obl$you;->you:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ear/cno;->ssp(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/obl$you;->you:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load bitmap in disk spend time =: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/wm/obl$you;->sis:J

    sub-long v2, v0, v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/ear/cno;->ssp(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wm/obl$you;->rtg:Lcom/android/server/wm/obl;

    invoke-static {p1}, Lcom/android/server/wm/obl;->tsu(Lcom/android/server/wm/obl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/obl$you$zta;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/wm/obl$you$zta;-><init>(Lcom/android/server/wm/obl$you;J)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/obl$you;->rtg:Lcom/android/server/wm/obl;

    invoke-static {p0}, Lcom/android/server/wm/obl;->sis(Lcom/android/server/wm/obl;)Lcom/android/server/wm/ear/sis;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ear/sis;->rtg()V

    return-void
.end method
