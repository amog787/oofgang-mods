.class Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$2;
.super Ljava/lang/Object;
.source "OPShutdownActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$2;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$2;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-static {p1}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$400(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V

    .line 128
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$2;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
