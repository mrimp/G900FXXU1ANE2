.class Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$2;
.super Ljava/lang/Object;
.source "PowerSavingDataServiceList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingDataServiceList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
