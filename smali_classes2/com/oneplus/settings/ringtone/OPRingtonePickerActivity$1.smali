.class Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$1;
.super Ljava/lang/Object;
.source "OPRingtonePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateSelected()V

    return-void
.end method
