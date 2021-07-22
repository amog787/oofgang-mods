.class public final synthetic Lcom/android/settings/notification/app/-$$Lambda$ConversationListPreferenceController$HKXCMFFpA_u9ZZGfRz14CHviJtw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/app/ConversationListPreferenceController;

.field public final synthetic f$1:Landroid/service/notification/ConversationChannelWrapper;

.field public final synthetic f$2:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/ConversationListPreferenceController;Landroid/service/notification/ConversationChannelWrapper;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/-$$Lambda$ConversationListPreferenceController$HKXCMFFpA_u9ZZGfRz14CHviJtw;->f$0:Lcom/android/settings/notification/app/ConversationListPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/app/-$$Lambda$ConversationListPreferenceController$HKXCMFFpA_u9ZZGfRz14CHviJtw;->f$1:Landroid/service/notification/ConversationChannelWrapper;

    iput-object p3, p0, Lcom/android/settings/notification/app/-$$Lambda$ConversationListPreferenceController$HKXCMFFpA_u9ZZGfRz14CHviJtw;->f$2:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/app/-$$Lambda$ConversationListPreferenceController$HKXCMFFpA_u9ZZGfRz14CHviJtw;->f$0:Lcom/android/settings/notification/app/ConversationListPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/app/-$$Lambda$ConversationListPreferenceController$HKXCMFFpA_u9ZZGfRz14CHviJtw;->f$1:Landroid/service/notification/ConversationChannelWrapper;

    iget-object p0, p0, Lcom/android/settings/notification/app/-$$Lambda$ConversationListPreferenceController$HKXCMFFpA_u9ZZGfRz14CHviJtw;->f$2:Landroidx/preference/Preference;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->lambda$createConversationPref$0$ConversationListPreferenceController(Landroid/service/notification/ConversationChannelWrapper;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
