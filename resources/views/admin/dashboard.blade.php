<!-- Webpixels CSS -->
<link href="https://unpkg.com/@webpixels/css@1.1.5/dist/index.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.4.0/font/bootstrap-icons.min.css" rel="stylesheet">
<!-- Bootstrap 5 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- DataTables Bootstrap 5 CSS -->
<link href="https://cdn.datatables.net/2.3.0/css/dataTables.bootstrap5.min.css" rel="stylesheet">

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

@include('extend.navbar')

<!-- Main content -->
<div class="h-screen flex-grow-1 overflow-y-lg-auto">
    <!-- Main -->
    <main class="py-6 bg-surface-secondary">
        <div class="container-fluid">
            <!-- Card stats -->
            <div class="row g-6 mb-8">
                <!-- Top Artist Card -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card shadow border-0 py-2">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <span class="h6 font-semibold text-muted text-sm d-block mb-2">Top Artist</span>
                                    <span class="h5 font-bold mb-0">
                                        {{ $topArtist ? $topArtist->name : 'N/A' }}
                                    </span>
                                    <div class="text-sm text-muted mt-1">
                                        {{ $topArtist ? number_format($topArtist->total_sales) . ' total sales' : '' }}
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <div class="icon icon-shape bg-success text-white text-lg rounded-circle">
                                        <i class="bi bi-star-fill"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Total Artists Card -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card shadow border-0 py-3">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <span class="h6 font-semibold text-muted text-sm d-block mb-2">Total Artists</span>
                                    <span class="h3 font-bold mb-0">{{ $totalArtists }}</span>
                                </div>
                                <div class="col-auto">
                                    <div class="icon icon-shape bg-primary text-white text-lg rounded-circle">
                                        <i class="bi bi-person-fill"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Total Albums Card -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card shadow border-0 py-3">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <span class="h6 font-semibold text-muted text-sm d-block mb-2">Total Albums</span>
                                    <span class="h3 font-bold mb-0">{{ $totalAlbums }}</span>
                                </div>
                                <div class="col-auto">
                                    <div class="icon icon-shape bg-warning text-white text-lg rounded-circle">
                                        <i class="bi bi-disc-fill"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Total Sales Card -->
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card shadow border-0 py-3">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <span class="h6 font-semibold text-muted text-sm d-block mb-2">Total Sales</span>
                                    <span class="h3 font-bold mb-0">{{ number_format($totalSales, 2) }}</span>
                                </div>
                                <div class="col-auto">
                                    <div class="icon icon-shape bg-danger text-white text-lg rounded-circle">
                                        <i class="bi bi-currency-dollar"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Search Form to Filter Albums by Artist -->
            <div class="container mb-4">
                <form action="{{ route('admin.searchAlbums') }}" method="GET" class="d-flex">
                    <input type="text" name="artist_name" class="form-control" placeholder="Search for an artist to display albums" required>
                    <button type="submit" class="btn btn-primary ms-2">Search</button>
                </form>
            </div>

            <!-- Display Search Results -->
            @if(isset($artist))
                <div class="alert alert-info mt-3">
                    <strong>Found Albums for:</strong> {{ $artist->name }}
                </div>

                <!-- Display Albums for the Searched Artist -->
                <div class="table-responsive py-3">
                    <table class="table table-hover table-nowrap">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">Album Name</th>
                                <th scope="col">Year</th>
                                <th scope="col">Sales</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($albums as $album)
                            <tr>
                                <td>{{ $album->name }}</td>
                                <td>{{ $album->year }}</td>
                                <td>{{ number_format($album->sales) }}</td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            @else
              
            @endif

            <!-- Nav Tabs -->
            <ul class="nav nav-tabs px-3 pt-3" id="artistTabs" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="total-sold-tab" data-bs-toggle="tab" data-bs-target="#total-sold" type="button" role="tab">
                        Total Albums Sold
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="sales-tab" data-bs-toggle="tab" data-bs-target="#sales" type="button" role="tab">
                        Combined Album Sales
                    </button>
                </li>
            </ul>

            <!-- Tab Content -->
            <div class="tab-content p-3">
                <!-- Tab 1: Total Albums Sold -->
                <div class="tab-pane fade show active" id="total-sold" role="tabpanel">
                    <div class="table-responsive py-3">
                        <table id="totalsold" class="table table-hover table-nowrap datatable">
                            <thead class="thead-light">
                                <tr>
                                    <th scope="col">Artist Name</th>
                                    <th scope="col">Total Albums Sold</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($artists as $artist)
                                <tr>
                                    <td>{{ $artist->name }}</td>
                                    <td>{{ $artist->albums_sum_sales ?? 0 }}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- Tab 2: Combined Album Sales Per Artist -->
                <div class="tab-pane fade" id="sales" role="tabpanel">
                    <div class="table-responsive py-3">
                        <table id="combinedSalesTable" class="table table-hover table-nowrap datatable">
                            <thead class="thead-light">
                                <tr>
                                    <th scope="col">Artist Name</th>
                                    <th scope="col">Combined Album Sales</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($artistSales as $artist)
                                @php
                                $combinedSales = $artist->albums->sum('sales');
                                @endphp
                                <tr>
                                    <td>{{ $artist->name }}</td>
                                    <td>{{ number_format($combinedSales) }}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdn.datatables.net/2.3.0/js/dataTables.min.js"></script>
<script src="https://cdn.datatables.net/2.3.0/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function() {
        // Initialize Total Albums Sold table
        $('#totalsold').DataTable({
            responsive: true,
            lengthChange: false,
            language: {
                search: "_INPUT_",
                searchPlaceholder: "Search..."
            }
        });

        // Initialize Combined Sales table
        $('#combinedSalesTable').DataTable({
            responsive: true,
            lengthChange: false,
            language: {
                search: "_INPUT_",
                searchPlaceholder: "Search..."
            }
        });
    });
</script>
