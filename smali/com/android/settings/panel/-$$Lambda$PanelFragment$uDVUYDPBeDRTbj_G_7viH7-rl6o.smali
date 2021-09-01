.class public final synthetic Lcom/android/settings/panel/-$$Lambda$PanelFragment$uDVUYDPBeDRTbj_G_7viH7-rl6o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/slice/widget/SliceLiveData$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/panel/PanelFragment;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$uDVUYDPBeDRTbj_G_7viH7-rl6o;->f$0:Lcom/android/settings/panel/PanelFragment;

    iput-object p2, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$uDVUYDPBeDRTbj_G_7viH7-rl6o;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onSliceError(ILjava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$uDVUYDPBeDRTbj_G_7viH7-rl6o;->f$0:Lcom/android/settings/panel/PanelFragment;

    iget-object p0, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$uDVUYDPBeDRTbj_G_7viH7-rl6o;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/panel/PanelFragment;->lambda$loadAllSlices$1$PanelFragment(Landroid/net/Uri;ILjava/lang/Throwable;)V

    return-void
.end method
