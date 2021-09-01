.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$lw_Wq0DVP57qlwDOANi5I6KnyZc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

.field public final synthetic f$1:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$lw_Wq0DVP57qlwDOANi5I6KnyZc;->f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    iput-object p2, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$lw_Wq0DVP57qlwDOANi5I6KnyZc;->f$1:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$lw_Wq0DVP57qlwDOANi5I6KnyZc;->f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    iget-object p0, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$lw_Wq0DVP57qlwDOANi5I6KnyZc;->f$1:Landroid/widget/Button;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->lambda$onCreateDialog$2$NetworkRequestDialogFragment(Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method
