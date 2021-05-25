.class final Lcom/android/server/wm/vdb$gck;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/vdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "gck"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/vdb;


# direct methods
.method constructor <init>(Lcom/android/server/wm/vdb;Lcom/android/server/wm/vdb$igw;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/vdb$gck;->zta:Lcom/android/server/wm/vdb;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-static {p1}, Lcom/android/server/wm/vdb;->zta(Lcom/android/server/wm/vdb;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "op_quickreply_im_list"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v0, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string p2, "op_quickreply_ime_adjust"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v0, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/vdb$gck;->zta:Lcom/android/server/wm/vdb;

    invoke-static {p0}, Lcom/android/server/wm/vdb;->vdb(Lcom/android/server/wm/vdb;)V

    return-void
.end method
