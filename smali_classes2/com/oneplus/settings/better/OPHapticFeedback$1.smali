.class Lcom/oneplus/settings/better/OPHapticFeedback$1;
.super Ljava/lang/Object;
.source "OPHapticFeedback.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/OPHapticFeedback;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPHapticFeedback;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPHapticFeedback;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/oneplus/settings/better/OPHapticFeedback$1;->this$0:Lcom/oneplus/settings/better/OPHapticFeedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 86
    check-cast p2, Ljava/lang/Boolean;

    .line 87
    iget-object p0, p0, Lcom/oneplus/settings/better/OPHapticFeedback$1;->this$0:Lcom/oneplus/settings/better/OPHapticFeedback;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPHapticFeedback;->access$000(Lcom/oneplus/settings/better/OPHapticFeedback;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/settings/better/OPHapticFeedback;->setHapticFeedbackState(Landroid/content/Context;Z)V

    const/4 p0, 0x1

    return p0
.end method
