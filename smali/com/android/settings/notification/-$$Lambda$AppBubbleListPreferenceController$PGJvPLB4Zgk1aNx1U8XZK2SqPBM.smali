.class public final synthetic Lcom/android/settings/notification/-$$Lambda$AppBubbleListPreferenceController$PGJvPLB4Zgk1aNx1U8XZK2SqPBM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/AppBubbleListPreferenceController;

.field public final synthetic f$1:Landroid/service/notification/ConversationChannelWrapper;

.field public final synthetic f$2:Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/AppBubbleListPreferenceController;Landroid/service/notification/ConversationChannelWrapper;Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$AppBubbleListPreferenceController$PGJvPLB4Zgk1aNx1U8XZK2SqPBM;->f$0:Lcom/android/settings/notification/AppBubbleListPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/-$$Lambda$AppBubbleListPreferenceController$PGJvPLB4Zgk1aNx1U8XZK2SqPBM;->f$1:Landroid/service/notification/ConversationChannelWrapper;

    iput-object p3, p0, Lcom/android/settings/notification/-$$Lambda$AppBubbleListPreferenceController$PGJvPLB4Zgk1aNx1U8XZK2SqPBM;->f$2:Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$AppBubbleListPreferenceController$PGJvPLB4Zgk1aNx1U8XZK2SqPBM;->f$0:Lcom/android/settings/notification/AppBubbleListPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/-$$Lambda$AppBubbleListPreferenceController$PGJvPLB4Zgk1aNx1U8XZK2SqPBM;->f$1:Landroid/service/notification/ConversationChannelWrapper;

    iget-object p0, p0, Lcom/android/settings/notification/-$$Lambda$AppBubbleListPreferenceController$PGJvPLB4Zgk1aNx1U8XZK2SqPBM;->f$2:Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/settings/notification/AppBubbleListPreferenceController;->lambda$createConversationPref$1$AppBubbleListPreferenceController(Landroid/service/notification/ConversationChannelWrapper;Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;Landroid/view/View;)V

    return-void
.end method
