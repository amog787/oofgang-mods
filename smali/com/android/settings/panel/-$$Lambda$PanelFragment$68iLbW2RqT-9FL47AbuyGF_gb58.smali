.class public final synthetic Lcom/android/settings/panel/-$$Lambda$PanelFragment$68iLbW2RqT-9FL47AbuyGF_gb58;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/panel/PanelFragment;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$68iLbW2RqT-9FL47AbuyGF_gb58;->f$0:Lcom/android/settings/panel/PanelFragment;

    iput-object p2, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$68iLbW2RqT-9FL47AbuyGF_gb58;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$68iLbW2RqT-9FL47AbuyGF_gb58;->f$0:Lcom/android/settings/panel/PanelFragment;

    iget-object p0, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$68iLbW2RqT-9FL47AbuyGF_gb58;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Lcom/android/settings/panel/PanelFragment;->lambda$loadAllSlices$2$PanelFragment(Landroid/net/Uri;)V

    return-void
.end method
