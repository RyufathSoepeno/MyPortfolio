.class public abstract Lu/h;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final e:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .registers 4

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lu/h;->e:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/fragment/app/Fragment;
    .registers 2

    iget-object v0, p0, Lu/h;->e:Landroidx/fragment/app/Fragment;

    return-object v0
.end method
