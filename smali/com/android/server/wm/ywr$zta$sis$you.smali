.class Lcom/android/server/wm/ywr$zta$sis$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ywr$zta$sis;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/wm/ywr$zta$sis;

.field final synthetic zta:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ywr$zta$sis;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ywr$zta$sis$you;->you:Lcom/android/server/wm/ywr$zta$sis;

    iput-object p2, p0, Lcom/android/server/wm/ywr$zta$sis$you;->zta:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ReadMode2: dialog cancelled pkg="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta$sis$you;->zta:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OemSceneModeActivityStack"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
