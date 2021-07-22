.class public final synthetic Lcom/android/settings/notification/app/-$$Lambda$NotificationPreferenceController$6voFphxabHhSQuewcIliIYLDKQs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/notification/app/-$$Lambda$NotificationPreferenceController$6voFphxabHhSQuewcIliIYLDKQs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/app/-$$Lambda$NotificationPreferenceController$6voFphxabHhSQuewcIliIYLDKQs;

    invoke-direct {v0}, Lcom/android/settings/notification/app/-$$Lambda$NotificationPreferenceController$6voFphxabHhSQuewcIliIYLDKQs;-><init>()V

    sput-object v0, Lcom/android/settings/notification/app/-$$Lambda$NotificationPreferenceController$6voFphxabHhSQuewcIliIYLDKQs;->INSTANCE:Lcom/android/settings/notification/app/-$$Lambda$NotificationPreferenceController$6voFphxabHhSQuewcIliIYLDKQs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/app/NotificationChannel;

    check-cast p2, Landroid/app/NotificationChannel;

    invoke-static {p1, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;->lambda$static$0(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)I

    move-result p0

    return p0
.end method
