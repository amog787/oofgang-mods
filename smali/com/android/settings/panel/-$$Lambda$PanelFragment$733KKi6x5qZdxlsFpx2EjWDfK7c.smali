.class public final synthetic Lcom/android/settings/panel/-$$Lambda$PanelFragment$733KKi6x5qZdxlsFpx2EjWDfK7c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/panel/PanelFragment;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$733KKi6x5qZdxlsFpx2EjWDfK7c;->f$0:Lcom/android/settings/panel/PanelFragment;

    iput-object p2, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$733KKi6x5qZdxlsFpx2EjWDfK7c;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$733KKi6x5qZdxlsFpx2EjWDfK7c;->f$0:Lcom/android/settings/panel/PanelFragment;

    iget-object p0, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$733KKi6x5qZdxlsFpx2EjWDfK7c;->f$1:Landroid/net/Uri;

    check-cast p1, Landroidx/slice/Slice;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/panel/PanelFragment;->lambda$loadAllSlices$3$PanelFragment(Landroid/net/Uri;Landroidx/slice/Slice;)V

    return-void
.end method
