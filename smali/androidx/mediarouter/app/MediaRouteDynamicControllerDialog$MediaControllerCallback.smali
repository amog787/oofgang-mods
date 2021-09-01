.class final Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaControllerCallback;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "MediaRouteDynamicControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;)V
    .locals 0

    .line 1393
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    .line 1406
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 1407
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->reloadIconIfNeeded()V

    .line 1408
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->updateMetadataViews()V

    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    .line 1398
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_0

    .line 1399
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mControllerCallback:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaControllerCallback;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 1400
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    :cond_0
    return-void
.end method
