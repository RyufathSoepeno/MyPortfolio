.class public final Landroidx/core/content/res/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/content/res/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:[Landroidx/core/content/res/e$d;


# direct methods
.method public constructor <init>([Landroidx/core/content/res/e$d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/content/res/e$c;->a:[Landroidx/core/content/res/e$d;

    return-void
.end method


# virtual methods
.method public a()[Landroidx/core/content/res/e$d;
    .registers 2

    iget-object v0, p0, Landroidx/core/content/res/e$c;->a:[Landroidx/core/content/res/e$d;

    return-object v0
.end method
