.class Lcom/android/settings/myprofile/ClockActivity$6;
.super Ljava/lang/Object;
.source "ClockActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/myprofile/ClockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myprofile/ClockActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/myprofile/ClockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myprofile/ClockActivity$6;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity$6;->this$0:Lcom/android/settings/myprofile/ClockActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    #calls: Lcom/android/settings/myprofile/ClockActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V
    invoke-static {v0, p1, v1}, Lcom/android/settings/myprofile/ClockActivity;->access$1000(Lcom/android/settings/myprofile/ClockActivity;Landroid/view/View;I)V

    goto :goto_0
.end method
