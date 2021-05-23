.class Lcom/android/server/wm/ywr$zta$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ywr$zta;->gwm(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStackSupervisor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/ywr$zta;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ywr$zta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ywr$zta$zta;->zta:Lcom/android/server/wm/ywr$zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ywr$zta$zta;->zta:Lcom/android/server/wm/ywr$zta;

    invoke-static {v0}, Lcom/android/server/wm/ywr$zta;->you(Lcom/android/server/wm/ywr$zta;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "first_show_port_tool_box_guideline"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/server/wm/ywr$zta;->zta()Lcom/android/server/wm/ywr$zta$rtg;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/wm/ywr$zta$zta;->zta:Lcom/android/server/wm/ywr$zta;

    invoke-static {v0}, Lcom/android/server/wm/ywr$zta;->you(Lcom/android/server/wm/ywr$zta;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "first_show_land_tool_box_guideline"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/server/wm/ywr$zta;->zta()Lcom/android/server/wm/ywr$zta$rtg;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta$zta;->zta:Lcom/android/server/wm/ywr$zta;

    invoke-virtual {p0}, Lcom/android/server/wm/ywr$zta;->zgw()V

    return-void
.end method
