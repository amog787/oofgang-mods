.class public final synthetic Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$htEfLAWO5EB6B7OCF1boY-AK3Vk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/utils/ManagedServiceSettings;

.field public final synthetic f$1:Ljava/lang/CharSequence;

.field public final synthetic f$2:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/utils/ManagedServiceSettings;Ljava/lang/CharSequence;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$htEfLAWO5EB6B7OCF1boY-AK3Vk;->f$0:Lcom/android/settings/utils/ManagedServiceSettings;

    iput-object p2, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$htEfLAWO5EB6B7OCF1boY-AK3Vk;->f$1:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$htEfLAWO5EB6B7OCF1boY-AK3Vk;->f$2:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$htEfLAWO5EB6B7OCF1boY-AK3Vk;->f$0:Lcom/android/settings/utils/ManagedServiceSettings;

    iget-object v1, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$htEfLAWO5EB6B7OCF1boY-AK3Vk;->f$1:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$htEfLAWO5EB6B7OCF1boY-AK3Vk;->f$2:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/settings/utils/ManagedServiceSettings;->lambda$updateList$0$ManagedServiceSettings(Ljava/lang/CharSequence;Landroid/content/ComponentName;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
