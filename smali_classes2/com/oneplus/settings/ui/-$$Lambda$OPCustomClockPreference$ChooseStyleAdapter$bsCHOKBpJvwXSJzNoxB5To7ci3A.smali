.class public final synthetic Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$ChooseStyleAdapter$bsCHOKBpJvwXSJzNoxB5To7ci3A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

.field public final synthetic f$3:Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;ILcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$ChooseStyleAdapter$bsCHOKBpJvwXSJzNoxB5To7ci3A;->f$0:Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;

    iput p2, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$ChooseStyleAdapter$bsCHOKBpJvwXSJzNoxB5To7ci3A;->f$1:I

    iput-object p3, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$ChooseStyleAdapter$bsCHOKBpJvwXSJzNoxB5To7ci3A;->f$2:Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iput-object p4, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$ChooseStyleAdapter$bsCHOKBpJvwXSJzNoxB5To7ci3A;->f$3:Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$ChooseStyleAdapter$bsCHOKBpJvwXSJzNoxB5To7ci3A;->f$0:Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;

    iget v1, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$ChooseStyleAdapter$bsCHOKBpJvwXSJzNoxB5To7ci3A;->f$1:I

    iget-object v2, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$ChooseStyleAdapter$bsCHOKBpJvwXSJzNoxB5To7ci3A;->f$2:Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget-object p0, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$ChooseStyleAdapter$bsCHOKBpJvwXSJzNoxB5To7ci3A;->f$3:Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->lambda$onBindViewHolder$0$OPCustomClockPreference$ChooseStyleAdapter(ILcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;Landroid/view/View;)V

    return-void
.end method
