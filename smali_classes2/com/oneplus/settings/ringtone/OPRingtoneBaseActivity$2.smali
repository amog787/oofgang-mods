.class Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2;
.super Ljava/lang/Object;
.source "OPRingtoneBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onBackPressed()V

    return-void
.end method
