.class Lcom/android/settings/panel/MediaOutputPanel$1;
.super Landroid/media/session/MediaController$Callback;
.source "MediaOutputPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/panel/MediaOutputPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/panel/MediaOutputPanel;


# direct methods
.method constructor <init>(Lcom/android/settings/panel/MediaOutputPanel;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/android/settings/panel/MediaOutputPanel$1;->this$0:Lcom/android/settings/panel/MediaOutputPanel;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 0

    .line 259
    iget-object p1, p0, Lcom/android/settings/panel/MediaOutputPanel$1;->this$0:Lcom/android/settings/panel/MediaOutputPanel;

    invoke-static {p1}, Lcom/android/settings/panel/MediaOutputPanel;->access$000(Lcom/android/settings/panel/MediaOutputPanel;)Lcom/android/settings/panel/PanelContentCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 260
    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputPanel$1;->this$0:Lcom/android/settings/panel/MediaOutputPanel;

    invoke-static {p0}, Lcom/android/settings/panel/MediaOutputPanel;->access$000(Lcom/android/settings/panel/MediaOutputPanel;)Lcom/android/settings/panel/PanelContentCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/panel/PanelContentCallback;->onHeaderChanged()V

    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1

    .line 266
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    .line 267
    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputPanel$1;->this$0:Lcom/android/settings/panel/MediaOutputPanel;

    invoke-static {v0}, Lcom/android/settings/panel/MediaOutputPanel;->access$000(Lcom/android/settings/panel/MediaOutputPanel;)Lcom/android/settings/panel/PanelContentCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 269
    :cond_0
    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputPanel$1;->this$0:Lcom/android/settings/panel/MediaOutputPanel;

    invoke-static {p0}, Lcom/android/settings/panel/MediaOutputPanel;->access$000(Lcom/android/settings/panel/MediaOutputPanel;)Lcom/android/settings/panel/PanelContentCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/panel/PanelContentCallback;->forceClose()V

    :cond_1
    return-void
.end method
