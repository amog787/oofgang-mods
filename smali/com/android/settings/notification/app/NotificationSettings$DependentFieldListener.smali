.class public Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;
.super Ljava/lang/Object;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/app/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DependentFieldListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/app/NotificationSettings;


# direct methods
.method protected constructor <init>(Lcom/android/settings/notification/app/NotificationSettings;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->this$0:Lcom/android/settings/notification/app/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFieldValueChanged()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->this$0:Lcom/android/settings/notification/app/NotificationSettings;

    iget-object v1, v0, Lcom/android/settings/notification/app/NotificationSettings;->mConversationDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;

    if-eqz v2, :cond_0

    .line 366
    check-cast v1, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;

    iget-object v0, v0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    .line 367
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->setImportant(Z)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->this$0:Lcom/android/settings/notification/app/NotificationSettings;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->this$0:Lcom/android/settings/notification/app/NotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/app/NotificationPreferenceController;

    .line 371
    invoke-virtual {v2, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    .line 373
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->this$0:Lcom/android/settings/notification/app/NotificationSettings;

    invoke-static {p0}, Lcom/android/settings/notification/app/NotificationSettings;->access$100(Lcom/android/settings/notification/app/NotificationSettings;)V

    return-void
.end method

.method protected onImportanceChangedForInstant()V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->this$0:Lcom/android/settings/notification/app/NotificationSettings;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->this$0:Lcom/android/settings/notification/app/NotificationSettings;

    iget-object v1, v1, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/app/NotificationPreferenceController;

    .line 380
    invoke-virtual {v2, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->this$0:Lcom/android/settings/notification/app/NotificationSettings;

    invoke-static {p0}, Lcom/android/settings/notification/app/NotificationSettings;->access$200(Lcom/android/settings/notification/app/NotificationSettings;)V

    return-void
.end method
