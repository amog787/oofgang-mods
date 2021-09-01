.class public Lcom/android/settings/display/TimeoutListPreference;
.super Lcom/android/settings/RestrictedListPreference;
.source "TimeoutListPreference.java"


# instance fields
.field private mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mInitialEntries:[Ljava/lang/CharSequence;

.field private mInitialValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RestrictedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/display/TimeoutListPreference;->mInitialEntries:[Ljava/lang/CharSequence;

    .line 55
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/display/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    .line 57
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportC427()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/display/TimeoutListPreference;->mInitialEntries:[Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    sget v0, Lcom/android/settings/R$string;->zen_mode_when_never:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/CharSequence;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/display/TimeoutListPreference;->mInitialEntries:[Ljava/lang/CharSequence;

    .line 61
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/settings/display/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "86400000"

    .line 63
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/CharSequence;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/display/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    .line 65
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/TimeoutListPreference;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/display/TimeoutListPreference;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0
.end method


# virtual methods
.method protected onDialogCreated(Landroid/app/Dialog;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->onDialogCreated(Landroid/app/Dialog;)V

    .line 84
    invoke-virtual {p1}, Landroid/app/Dialog;->create()V

    .line 85
    iget-object v0, p0, Lcom/android/settings/display/TimeoutListPreference;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    .line 86
    sget v0, Lcom/android/settings/R$id;->admin_disabled_other_options:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 87
    sget v0, Lcom/android/settings/R$id;->admin_more_details_link:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/settings/display/TimeoutListPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/TimeoutListPreference$1;-><init>(Lcom/android/settings/display/TimeoutListPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedListPreference;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 74
    iget-object p0, p0, Lcom/android/settings/display/TimeoutListPreference;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p0, :cond_0

    .line 75
    sget p0, Lcom/android/settings/R$layout;->admin_disabled_other_options_footer:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 77
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    :goto_0
    return-void
.end method

.method public removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 6

    .line 99
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/settings/display/TimeoutListPreference;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p3, :cond_2

    const-wide p1, 0x7fffffffffffffffL

    .line 112
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 114
    :goto_0
    iget-object v4, p0, Lcom/android/settings/display/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 115
    aget-object v4, v4, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-gtz v4, :cond_3

    .line 117
    iget-object v4, p0, Lcom/android/settings/display/TimeoutListPreference;->mInitialEntries:[Ljava/lang/CharSequence;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v4, p0, Lcom/android/settings/display/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 125
    invoke-virtual {p0, p3}, Lcom/android/settings/RestrictedListPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_5
    const/4 v3, 0x0

    .line 128
    invoke-virtual {p0, v3}, Lcom/android/settings/RestrictedListPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    if-eq v3, v4, :cond_8

    .line 132
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-array v4, v2, [Ljava/lang/CharSequence;

    .line 133
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 134
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 135
    iput-object p3, p0, Lcom/android/settings/display/TimeoutListPreference;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    int-to-long v4, v3

    cmp-long p3, v4, p1

    if-gtz p3, :cond_6

    .line 137
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 138
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_7

    .line 139
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long p3, v4, p1

    if-nez p3, :cond_7

    .line 142
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Default to longest timeout. Value disabled by admin:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TimeoutListPreference"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method
