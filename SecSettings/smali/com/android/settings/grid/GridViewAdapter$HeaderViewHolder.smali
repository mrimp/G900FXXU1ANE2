.class public Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "GridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/grid/GridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field cursorStartAt:I

.field icon:Lcom/android/settings/ToggleImageView;

.field icon_check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
