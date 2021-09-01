.class Lcom/oneplus/settings/OPGestureAnswerSettings$1;
.super Landroid/database/ContentObserver;
.source "OPGestureAnswerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPGestureAnswerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPGestureAnswerSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPGestureAnswerSettings;Landroid/os/Handler;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/oneplus/settings/OPGestureAnswerSettings$1;->this$0:Lcom/oneplus/settings/OPGestureAnswerSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 79
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 80
    invoke-static {}, Lcom/oneplus/settings/OPGestureAnswerSettings;->access$000()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureAnswerSettings$1;->this$0:Lcom/oneplus/settings/OPGestureAnswerSettings;

    invoke-static {p1}, Lcom/oneplus/settings/OPGestureAnswerSettings;->access$100(Lcom/oneplus/settings/OPGestureAnswerSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureAnswerSettings$1;->this$0:Lcom/oneplus/settings/OPGestureAnswerSettings;

    invoke-static {p1}, Lcom/oneplus/settings/OPGestureAnswerSettings;->access$100(Lcom/oneplus/settings/OPGestureAnswerSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureAnswerSettings$1;->this$0:Lcom/oneplus/settings/OPGestureAnswerSettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPGestureAnswerSettings;->access$200(Lcom/oneplus/settings/OPGestureAnswerSettings;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 85
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/OPGestureAnswerSettings;->access$300()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureAnswerSettings$1;->this$0:Lcom/oneplus/settings/OPGestureAnswerSettings;

    invoke-static {p1}, Lcom/oneplus/settings/OPGestureAnswerSettings;->access$400(Lcom/oneplus/settings/OPGestureAnswerSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureAnswerSettings$1;->this$0:Lcom/oneplus/settings/OPGestureAnswerSettings;

    invoke-static {p1}, Lcom/oneplus/settings/OPGestureAnswerSettings;->access$400(Lcom/oneplus/settings/OPGestureAnswerSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/OPGestureAnswerSettings$1;->this$0:Lcom/oneplus/settings/OPGestureAnswerSettings;

    invoke-static {p0}, Lcom/oneplus/settings/OPGestureAnswerSettings;->access$500(Lcom/oneplus/settings/OPGestureAnswerSettings;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
