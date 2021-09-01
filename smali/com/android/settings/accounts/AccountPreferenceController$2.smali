.class Lcom/android/settings/accounts/AccountPreferenceController$2;
.super Ljava/lang/Object;
.source "AccountPreferenceController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountPreferenceController;->getAccountTypePreferences(Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;Landroid/util/ArrayMap;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/accounts/AccountTypePreference;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/accounts/AccountTypePreference;Lcom/android/settings/accounts/AccountTypePreference;)I
    .locals 1

    .line 661
    invoke-virtual {p1}, Lcom/android/settings/accounts/AccountTypePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/settings/accounts/AccountTypePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 663
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/accounts/AccountTypePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/settings/accounts/AccountTypePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 658
    check-cast p1, Lcom/android/settings/accounts/AccountTypePreference;

    check-cast p2, Lcom/android/settings/accounts/AccountTypePreference;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceController$2;->compare(Lcom/android/settings/accounts/AccountTypePreference;Lcom/android/settings/accounts/AccountTypePreference;)I

    move-result p0

    return p0
.end method
