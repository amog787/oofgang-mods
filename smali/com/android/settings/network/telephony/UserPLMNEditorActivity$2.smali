.class Lcom/android/settings/network/telephony/UserPLMNEditorActivity$2;
.super Ljava/lang/Object;
.source "UserPLMNEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/UserPLMNEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/UserPLMNEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/UserPLMNEditorActivity;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity$2;->this$0:Lcom/android/settings/network/telephony/UserPLMNEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity$2;->this$0:Lcom/android/settings/network/telephony/UserPLMNEditorActivity;

    invoke-static {p1}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->access$200(Lcom/android/settings/network/telephony/UserPLMNEditorActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->access$300(Lcom/android/settings/network/telephony/UserPLMNEditorActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "input network id is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UserPLMNEditorActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p2, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity$2;->this$0:Lcom/android/settings/network/telephony/UserPLMNEditorActivity;

    invoke-static {p2}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->access$400(Lcom/android/settings/network/telephony/UserPLMNEditorActivity;)Landroid/preference/Preference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p2, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity$2;->this$0:Lcom/android/settings/network/telephony/UserPLMNEditorActivity;

    invoke-static {p2}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->access$500(Lcom/android/settings/network/telephony/UserPLMNEditorActivity;)Landroid/preference/ListPreference;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity$2;->this$0:Lcom/android/settings/network/telephony/UserPLMNEditorActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity$2;->this$0:Lcom/android/settings/network/telephony/UserPLMNEditorActivity;

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->selectNetworkChoices(Ljava/lang/String;)I

    move-result p0

    .line 122
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
