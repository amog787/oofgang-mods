.class public final synthetic Lcom/android/settings/notification/-$$Lambda$NotificationPeopleStripPreferenceController$g-55QSFR_o8TvqeEBFKoOHZl0v0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/ContentResolver;

.field public final synthetic f$1:Landroid/database/ContentObserver;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$NotificationPeopleStripPreferenceController$g-55QSFR_o8TvqeEBFKoOHZl0v0;->f$0:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/settings/notification/-$$Lambda$NotificationPeopleStripPreferenceController$g-55QSFR_o8TvqeEBFKoOHZl0v0;->f$1:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$NotificationPeopleStripPreferenceController$g-55QSFR_o8TvqeEBFKoOHZl0v0;->f$0:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settings/notification/-$$Lambda$NotificationPeopleStripPreferenceController$g-55QSFR_o8TvqeEBFKoOHZl0v0;->f$1:Landroid/database/ContentObserver;

    invoke-static {v0, p0}, Lcom/android/settings/notification/NotificationPeopleStripPreferenceController;->lambda$onResume$0(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    return-void
.end method
